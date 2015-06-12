import request from 'request';
import url from 'url';

var app = express();

app.get('/hello/:nickname', function(req, response) {
    "use strict";

    var nickname = req.params.nickname;

    response.write(`Hello ${nickname}`);
})
