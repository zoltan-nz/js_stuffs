import fs from 'fs';

var rstream = fs.createReadStream('index.html');
rstream.pipe(process.stdout);
//rstream.on('readable', function() {
//    "use strict";
//    var chunk = null;
//    var counter = 0;
//    while (null !== (chunk = rstream.read())){
//        counter++;
//        console.log(chunk.toString());
//        console.log(counter);
//    };
//});