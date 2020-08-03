#include "ports.h"

// Linux headers
#include <fcntl.h> // Contains file controls like O_RDWR
#include <errno.h> // Error integer and strerror() function
#include <termios.h> // Contains POSIX terminal control definitions
#include <unistd.h> // write(), read(), close()

#include <sys/types.h>
#include <sys/stat.h>

void set_blocking (int fd, int should_block)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
                printf("error from tggetattr: %s\n", strerror(errno));
                return;
        }

        tty.c_cc[VMIN]  = should_block ? 1 : 0;
        tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

        if (tcsetattr (fd, TCSANOW, &tty) != 0)

         printf("error setting term attributes: %s\n", strerror(errno));
}

Ports::Ports(string port){
    Ports::_port = port ;
    Ports::_isOpen = -1;
}

Ports::~Ports(){
}

int Ports::Write(string cmd)
{
    int rw = -1;

    //unsigned char msg[] = { 'H', 'e', 'l', 'l', 'o', '\r' };
    //write(Ports::_isOpen, "Hello!", sizeof(msg));

    if( Ports::_isOpen >0 ){

            printf("write cmd is : %s\n",cmd.c_str());
           tcflush(Ports::_isOpen,TCOFLUSH);
           rw = write(Ports::_isOpen ,cmd.c_str(), sizeof (cmd.c_str()));
            if(rw){
                //cout << "writing %i command OK is : "<<cmd.c_str()<< endl;
                printf("writing %i bytes with command : %s\n",rw,cmd.c_str());
            }

             //tcdrain(Ports::_isOpen);

    }


    return rw;
}

int Ports::Read(){


    //char buf[10];
    int  rw = -1;

    // Allocate memory for read buffer, set size according to your needs
    char read_buf [256];
    memset(read_buf, '\0', sizeof(read_buf));

    // if(Ports::isOpen()){

        printf("try to reat port on id  %i from open: %s\n", Ports::_isOpen,Ports::_port.c_str());
            fcntl(Ports::_isOpen, F_SETFL, FNDELAY);
             usleep(10000);
        //rw =read(Ports::_isOpen ,buf, sizeof (buf));
        int num_bytes = read(Ports::_isOpen , read_buf, sizeof(read_buf));

         if(num_bytes<0){
             printf("Error reading: %s", strerror(errno));
             return -1;
         }

           printf("read bytes number = %i and response is : %s\n", num_bytes,read_buf);
    // }

     return rw;
}

int Ports::Open( ){


    int serial_port = open(Ports::_port.c_str(), O_RDWR| O_NOCTTY ); //| O_NONBLOCK

    int val = fcntl(serial_port, F_GETFL, 0);
    printf("file status = 0x%x\n", val);

    printf("serial port is %s from open: %i\n", Ports::_port.c_str(),serial_port);

    // Check for errors
    if (serial_port < 0) {
        printf("Error %i from open: %i\n", errno,serial_port);
        return -1;
    }

    // *baudrate 115200, 8 bits, no parity, 1 stop bit */
    // cout << "pot fd is %i \n"<< Ports::_isOpen<< endl;

    int ret = Ports::set_interface_attribs(serial_port, B19200);
    if(ret !=0){
         printf("Attribute not set is : %i\n", ret);
         return -1;
    }

    //set_blocking (serial_port, 0);

    //sleep(1); //required to make flush work, for some reason


    Ports::_isOpen = serial_port;
    printf("port is Open with id  : %i\n", serial_port);
    return  serial_port;
}

bool Ports::isOpen()
{
    bool serial = false;

    printf(" set is : %i\n", Ports::_isOpen);

    if (Ports::_isOpen < 0){
       serial = Open();
    }
    serial = Open();
    printf(" set is : %i\n", Ports::_isOpen);

    return serial;
}

int Ports::set_interface_attribs(int fd, int speed)
{
    struct termios tty;
    memset(&tty, 0, sizeof tty);

    if (tcgetattr(fd, &tty) < 0) {
        printf("Error from tcgetattr: %s\n", strerror(errno));
        return -1;
    }

    cfsetospeed(&tty, (speed_t)speed);
    cfsetispeed(&tty, (speed_t)speed);

    /* raw mode, like Version 7 terminal driver */
    cfmakeraw(&tty);

    tty.c_cflag |= (CLOCAL | CREAD);    /* ignore modem controls */
    tty.c_cflag &= ~CSIZE;
    tty.c_cflag |= CS8;         /* 8-bit characters */
    tty.c_cflag &= ~PARENB;     /* no parity bit */
    tty.c_cflag &= ~CSTOPB;     /* only need 1 stop bit */
    tty.c_cflag &= ~CRTSCTS;    /* no hardware flowcontrol */

    /* setup for non-canonical mode */
    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    tty.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    tty.c_oflag &= ~OPOST;


    /* fetch bytes as they become available */
    tty.c_cc[VMIN] = 0;
    tty.c_cc[VTIME] = 10;

    if (tcsetattr(fd, TCSANOW, &tty) != 0) {
        printf("Error from tcsetattr: %s\n", strerror(errno));
        return -1;
    }
    return 0;
}

void Ports::Close(){
    close(Ports::_isOpen);
}
