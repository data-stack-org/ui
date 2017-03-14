import http.server
import socketserver
import os

PORT = 8080
DIR = 'src'


def set_serve_directory():
    web_dir = os.path.join(os.path.dirname(__file__), DIR)
    os.chdir(web_dir)


def serve():
    handler = http.server.SimpleHTTPRequestHandler
    server = socketserver.TCPServer(("", PORT), handler)
    print("serving at port", PORT)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    server.server_close()


if __name__ == "__main__":
    set_serve_directory()
    serve()
