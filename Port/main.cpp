#include <iostream>
#include "ports.h"

using namespace std;

int main()
{
    Ports* serial = new Ports("/dev/ttyACM1");
    serial->Open();
    serial->Write("AT+CGATT\r");

    serial->Read();

    serial->Close();

    //cout << "Hello World!" << endl;
    return 0;
}
