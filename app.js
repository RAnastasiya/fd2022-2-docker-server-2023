const express = require('express');

const app = express();
// app.use(express.json());

app.get('/', (req, res)=>{
    res.send('Hi!!!!')
})

app.get('/about', (req, res)=>{
    res.send('Hello from About!!!!')
})

module.exports = app;