#ifndef PORTS_H
#define PORTS_H
#include <iostream>
#include <bits/stdc++.h>


using namespace std;


class Ports
{
public:
    Ports(string port);
   ~Ports();

    int Write(string cmd);
    int Read();
    int Open();
    bool isOpen();
    void Close();
    int set_interface_attribs(int fd, int speed);
    int connect(string handler);

private:
    string _port;
    int _isOpen;
};

#endif // PORTS_H
