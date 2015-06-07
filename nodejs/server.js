import fs from 'fs';
import http from 'http';
import logger from './logger-compiled.js';

var server = http.createServer();
var counter = 0;

var serverCallback = function(request, response) {

    response.writeHead(200, {
        'Content-Type': 'text/html'
    });

    fs.readFile('index.html', function (error, contents) {
        response.write(contents);
        response.end();
    });
};

server.on('request', serverCallback);

server.on('request', function(){counter++;logger.emit('error', `Request... ${counter}`);});

server.listen(8080);

export default server;