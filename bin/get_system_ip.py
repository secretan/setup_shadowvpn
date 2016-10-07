#!/usr/bin/env python

def get_local_ip(ifname='eth0'):
    import socket, fcntl,struct
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    inet = fcntl.ioctl(s.fileno(), 0x8915, struct.pack('256s', ifname[:15]))
    print inet
    ret = socket.inet_ntoa(inet[20:24]);

    return ret

print get_local_ip();

