const express = require('express')
const app = express()
const port = 3000
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.post('/api/buba-gump', (req, res) => {
    console.log(req.body);
    if(req.body.message == "ping"){
        res.send("pong");
    }else if(req.body.message == "pong"){
        res.send("ping");
    }else{
        res.send("I don'nt understand your message");
    }
    res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})