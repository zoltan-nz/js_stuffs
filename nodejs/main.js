import express from 'express';

var app = express();

app.get('/', function(request, response) {
	response.sendFile(__dirname + '/index.html');
});

app.listen(8080);

export default app;