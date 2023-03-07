const express = require('express')
const app = express()
const port = 3000
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/api/age/:name', (req, res) => {
    console.log(req.params.name);
    let anio = getRandomIntInclusive(1, 99);
    if(req.params.name != undefined){
        res.send({
            "name": req.params.name,
            "age": anio,
            "days": anio %4 == 0 ? anio *366 : anio *365
        });
    }else{
        res.send({
            "error": "Missing parameter 'name' was expected."
        });
    }
})

function getRandomIntInclusive(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1) + min);
}

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})