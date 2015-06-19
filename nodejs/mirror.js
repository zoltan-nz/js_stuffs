import http from 'http';

var server = http.createServer( function(req, res) {

    if (req.method === 'POST') {
        console.log("POST");
        var body = '';
        req.on('data', function (data) {
            body += data;
        });
        req.on('end', function () {
            var json = JSON.parse(body);
            console.log(JSON.stringify(json, null, 4));
            console.log("----------------");
        });
        res.writeHead(200, {'Content-Type': 'application/json'});
        res.end();
    }
    else
    {
        console.log("GET");
        //var html = '<html><body><form method="post" action="http://localhost:3000">Name: <input type="text" name="name" /><input type="submit" value="Submit" /></form></body>';
        //var html = fs.readFileSync('index.html');
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end();
    }

});

var port = 3000;
var host = '127.0.0.1';
server.listen(port, host);
console.log('Listening at http://' + host + ':' + port);