import express from 'express';
import http from 'http';
import socketio from 'socket.io';
import redis from 'redis';

var app = express();
var server = http.createServer(app);
var io = socketio(server);
var redisClient = redis.createClient();

var storeMessage = function(name, data) {
    var message = JSON.stringify({name: name, data: data});

    redisClient.lpush('messages', message, function(err, response) {
        redisClient.ltrim('messages', 0, 9)
    });
};

io.on('connection', function(client) {
    "use strict";

    console.log('Client connected...');

    client.on('messages', function (data) {
        storeMessage(client.nickname, data);
        client.broadcast.emit('messages', client.nickname + ": " + data);
        client.emit('messages', client.nickname + ": " + data);
    });

    client.on('join', function(name) {
        client.nickname = name;
        console.log(name + ' connected to the chat...');

        redisClient.sadd('chatters', name);

        redisClient.smembers('chatters', function(err, names) {
            names.forEach(function(n) {
                client.emit('add chatter', n);
            });
        });

        client.broadcast.emit('add chatter', name);

        redisClient.lrange('messages', 0, -1, function(err, messages) {
            messages = messages.reverse();

            messages.forEach(function(message) {
               message = JSON.parse(message);
               client.emit('messages', message.name + ": " + message.data);
            });

        });
    });

    client.on('disconnect', function() {
        var name = client.nickname;
        console.log(name + ' disconnected...');
        client.broadcast.emit('remove chatter', name);
        redisClient.srem("chatters", name);
    });
});

app.get('/', function (req, res) {
    "use strict";
    res.sendFile(__dirname + '/index.html');
});

app.get('/jquery', function (req, res) {
    res.sendFile(__dirname + '/jquery.min.js');
});

server.listen(8080);