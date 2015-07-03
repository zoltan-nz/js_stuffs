import express from 'express';
import http from 'http';
import socketio from 'socket.io';

var app = express();
var server = http.createServer(app);
var io = socketio(server);

io.on('connection', function(client) {
    "use strict";
    console.log('Client connected...');

    client.emit('messages', { hello: 'world' });
});

app.get('/', function (req, res) {
    "use strict";
    res.sendFile(__dirname + '/index.html');
});

server.listen(8080);