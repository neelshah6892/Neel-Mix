import socket
import struct
import sys
import dnslib
import binascii

multicast_group = '233.1.2.5'
server_address = ('', 34074)

# Create the socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Bind to the server address
sock.bind(server_address)

# Tell the operating system to add the socket to the multicast group
# on all interfaces.
group = socket.inet_aton(multicast_group)
mreq = struct.pack('4sL', group, socket.INADDR_ANY)
sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)
# Receive/respond loop
while True:
    print(sys.stderr, '\nwaiting to receive message')
    data, address = sock.recvfrom(512)
    
    print(sys.stderr, 'received %s bytes from %s' % (len(data), address))
    #a = data.slice[0:4]
    a = data
    hexdata = binascii.hexlify(data)
    print(hexdata)
    #print(a)
    #b = a.decode('iso8859')
    b = hexdata.decode('UTF-8')
    print(b)
    d = int(b, 16)
    print(d)

    #print(sys.stderr, 'sending acknowledgement to', address)
    #sock.sendto('ack', address)