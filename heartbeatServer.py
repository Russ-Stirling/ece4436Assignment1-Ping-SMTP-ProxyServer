# UDPPingerServer.py
# We will need the following module to generate randomized lost packets

import random
from socket import *

# Create a UDP socket
# Notice the use of SOCK_DGRAM for UDP packets

serverSocket = socket(AF_INET, SOCK_DGRAM)

# Assign IP address and port number to socket

serverSocket.bind(('', 12019))

timeA=0
timeB=0
seqA=0
seqB=0

while True:
    # Generate random number in the range of 0 to 10
    rand = random.randint(0, 10)
    # Receive the client packet along with the address it is coming from
    message, address = serverSocket.recvfrom(1024)
    seqA,timeA=message.split(" ")
    if (float(seqA)<float(seqB)):
        timeB=0
        seqB=0
    #print seqA
    #print timeA
    if rand < 4:
        continue
    # Otherwise, the server responds
    if timeB==0:
        print 'Packet %s is the first packet to arrive' % (seqA)
    else:
        timediff=float(timeA)-float(timeB)
        print 'The time difference between packet %s and packet %s was %f' % (seqB, seqA, timediff)
    packs=float(seqA)-float(seqB)
    if (packs)> 1:
        #a packet was missed
        print '%d packet(s) were missed' % (packs-1)
    
    timeB=timeA
    seqB=seqA
    print ' '
    serverSocket.sendto(message, address)
