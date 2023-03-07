const express = require('express')
const app = express()
const port = 3000
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/api/delay/:time', (req, res) => {
    console.log(req.params.time);
    setTimeout(function(){
        res.send("This response was delayed by " + req.params.time + " milliseconds");
    }, req.params.time);
})

app.get('/api/delay', (req, res) => {
    setTimeout(function(){
        res.send("This response was delayed by 1000 milliseconds");
    }, 1000);
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})