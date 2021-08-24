var express = require("express");

var app = express();

app.use(express.static('publicdev'));

//make way for some custom css, js and images
app.use('/css', express.static(__dirname + '/publicdev/css'));
app.use('/js', express.static(__dirname + '/publicdev/js'));
app.use('/images', express.static(__dirname + '/publicdev/images'));

var server = app.listen(9006, function(){
    var port = server.address().port;
    console.log("Server started at http://localhost:%s", port);
});
