import express from 'express';

var app = express();

app.get('/', function(req, res) { res.send('Hello World!'); });

app.get('/hello/:nickname', function(req, response) {

    var nickname = req.params.nickname;

    response.send(`Hello ${nickname}`);
});

app.listen(5200);
