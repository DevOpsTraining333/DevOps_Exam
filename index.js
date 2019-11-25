var http = require('http');
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('DevOps_exam \n');
  }).listen(6543, '192.168.56.112');
  console.log('Server running at http://192.168.56.112:6543/');