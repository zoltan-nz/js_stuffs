import fs from 'fs';
import http from 'http';

http.createServer(function(request, response) {
    var newFile = fs.createWriteStream('readme_copy.md');
    request.pipe(newFile);

    request.on('end', function() {
        response.end('uploaded!');
    });
}).listen(8080);