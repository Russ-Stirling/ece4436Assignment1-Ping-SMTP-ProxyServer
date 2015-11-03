# -*- coding: cp1252 -*-
from socket import *
import ssl
import base64
import getpass

msg = "\r\n I love computer networks!"
endmsg = "\r\n.\r\n"
# Choose a mail server (e.g. Google mail server) and call it mailserver
mailServer = "smtp.gmail.com"
mailPort = 587
# Create socket called clientSocket and establish a TCP connection with mailserver
clientSocket = socket(AF_INET,SOCK_STREAM)
clientSocket.connect((mailServer, mailPort))
resp0 = clientSocket.recv(1024)
if resp0[:3] == '220':
    print resp0
else:
    print '%d, reply was not received from the server.' % (resp0[:3])

# Send HELO command and print server response.
heloCMD = 'HELO Alice\r\n'
clientSocket.send(heloCMD)
resp1 = clientSocket.recv(1024)
if resp1[:3] == '250':
    print resp1
else:
    print '%s, reply not received from server.' % (resp1[:3])
    
#SSL Encryption
tlsCMD = 'STARTTLS\r\n'
clientSocket.send(tlsCMD)
resp2 = clientSocket.recv(1024)
if resp2[:3] == '220':
    print resp2
else:
    print '%s, reply not received from server.' % (resp2[:3])

ssl_clientSocket = ssl.wrap_socket(clientSocket, ssl_version = ssl.PROTOCOL_SSLv23)

loginCMD = 'AUTH LOGIN\r\n'
ssl_clientSocket.send(loginCMD)
resp3 = ssl_clientSocket.recv(1024)
if resp3[:3] == '334':
    print resp3
else:
    print '%s, reply not received from server.' % (resp3[:3])

loginCMD = base64.b64encode(raw_input('Email Address: ')) + '\r\n'
ssl_clientSocket.send(loginCMD)
resp4 = ssl_clientSocket.recv(1024)
if resp4[:3] == '334':
    print resp4
else:
    print '%s, reply not received from server.' % (resp4[:3])

loginCMD = base64.b64encode(getpass.getpass('Password: ')) +'\r\n'
ssl_clientSocket.send(loginCMD)
resp5 = ssl_clientSocket.recv(1024)
if resp5[:3] == '235':
    print resp5
else:
    print '%s, reply not received from server.' % (resp5[:3])

# Send MAIL FROM command and print server response.
mailFromCMD = 'MAIL FROM: <' + raw_input('FROM: ') + '>\r\n'
ssl_clientSocket.send(mailFromCMD)
resp6 = ssl_clientSocket.recv(1024)
if resp6[:3] == '250':
    print resp6
else:
    print '%s, reply not received from server.' % (resp6[:3])


# Send RCPT TO command and print server response.
rcptToCMD = 'RCPT TO: <' + raw_input('TO: ') +'>\r\n'
ssl_clientSocket.send(rcptToCMD)
resp7 = ssl_clientSocket.recv(1024)
if resp7[:3] == '250':
    print resp7
else:
    print '%s, reply not received from server.' % (resp7[:3])

# Send DATA command and print server response.
dataCMD ='DATA\r\n'
print dataCMD
ssl_clientSocket.send(dataCMD)
resp8 = ssl_clientSocket.recv(1024)
if resp8[:3] == '354':
    print resp8
else:
    print '%s, reply not received from server.' % (resp8[:3])

# Send message data.
message = raw_input('Enter message: ')
# Message ends with a single period.
mailMessageEnd = '\r\n.\r\n'
ssl_clientSocket.send(message + mailMessageEnd)
resp9 = ssl_clientSocket.recv(1024)
if resp9[:3] == '250':
    print resp9
else:
    print '%s, reply not received from server.' % (resp9[:3])

# Send QUIT command and get server response.
quitCMD = 'QUIT\r\n'
print quitCMD
ssl_clientSocket.send(quitCMD)
resp10 = ssl_clientSocket.recv(1024)
if resp10[:3] == '221':
    print resp10
else:
    print '%s, reply not received from server.' % (resp10[:3])

