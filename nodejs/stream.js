import fs from 'fs';
import http from 'http';

http.createServer(function(request, response) {
    var newFile = fs.createWriteStream('readme_copy.md');
    var fileBytes = request.headers['content-length'];
    var uploadedBytes = 0;

    request.on('readable', function() {
        var chunk = null;

        while(null !== (chunk = request.read())) {
            uploadedBytes += chunk.length;
            var progress = (uploadedBytes / fileBytes) * 100;
            response.write("progress: " + parseInt(progress, 10) + "%\n");
        }
    });

    request.pipe(newFile);

    request.on('end', function() {
        response.end('uploaded!\n');
    });
}).listen(8080);