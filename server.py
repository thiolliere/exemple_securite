import socket
import rsa

UDP_IP = "127.0.0.1"
UDP_PORT = 5005

sock = socket.socket(socket.AF_INET, # Internet
                     socket.SOCK_DGRAM) # UDP

sock.bind((UDP_IP, UDP_PORT))

key = rsa.newkeys(2048)[0]
key.e = 3

print("trusted public key:", key.e)

while True:
    message = sock.recv(4096)
    sig = sock.recv(4096)
    if rsa.verify(message, sig, key):
        print("I trust your message:", message.decode("ASCII"))
    else:
        print("I don't trust your message")
