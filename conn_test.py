
import socket
import sys

if len(sys.argv) != 3:
    print("Usage: python3 conn_test.py <hostname> <port>")
    sys.exit(1)

hostname = sys.argv[1]
port = int(sys.argv[2])  

try:
    
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client.connect((hostname, port))
    print(f"Connected to {hostname} on port {port}")
    
    
    if port == 443:
        import ssl
        context = ssl.create_default_context()
        client = context.wrap_socket(client, server_hostname=hostname)
    
    
    request = f"GET / HTTP/1.1\r\nHost: {hostname}\r\nConnection: close\r\n\r\n"
    client.send(request.encode('utf-8'))
    
    response = b""
    while True:
        chunk = client.recv(4096)
        if not chunk:
            break
        response += chunk
    
    print(response.decode('utf-8', errors='ignore'))
    
except Exception as e:
    print(f"Error: {e}")
finally:
    client.close()