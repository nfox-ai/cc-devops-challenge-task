import socket

def test_index(app, client):
    hostname = socket.gethostname()
    res = client.get('/')
    assert hostname == res.data.decode('ascii')

def test_healthy(app, client):
    expected = "healthy"
    res = client.get('/healthz')
    assert expected == res.data.decode('ascii')

def test_ready(app, client):
    expected = "ready"
    res = client.get('/ready')
    assert expected == res.data.decode('ascii')
