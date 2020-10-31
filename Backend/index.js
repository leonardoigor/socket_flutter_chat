const express = require('express')
const app = express;
const http = require('http').createServer(app)

const io = require('socket.io')(http)



io.on('connect', socket => {
    console.log(socket.id);
})


http.listen(3000)