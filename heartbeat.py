import time
from socket import *
from array import *

rttArr=array('d',[])
seq=1
for i in range (10):
    #create a udp socket
    clientSocket = socket(AF_INET, SOCK_DGRAM)
    clientSocket.settimeout(1)
    leave = time.time()
    message = '%d %f' %(seq,leave)
    seq=seq+1
    address = ('127.0.0.1', 12019)
    clientSocket.sendto(message, address)
    try:
        message2, server = clientSocket.recvfrom(1024)
        arrive = time.time()
        rtt=arrive-leave
        rttArr.append(rtt)
        print 'Ping: %d, Message: %s, Reply: %s, RTT: %f' % (i+1, message, message2, rtt)
    except timeout:
        print 'Request Timeout'
    clientSocket.close()
if len(rttArr)>0:
    avg=0
    lowest=rttArr[0]
    highest=rttArr[0]
    for i in rttArr:
        avg+=i
        if i<lowest:
            lowest=i
        elif i>highest:
            highest=i
    avg=avg/len(rttArr)
    percent=((10-len(rttArr))/10.0)*100
    print ''
    print 'The average RTT is %f' % (avg)
    print 'The shortest RTT is %f' % (lowest)
    print 'The longest RTT is %f' % (highest)
    print 'The packet loss percentage is %d%% ' % (percent)
else:
    print 'Recieved timeout on all requests'
    
