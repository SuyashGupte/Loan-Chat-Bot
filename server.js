const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser');
const path = require('path');




const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

app.use(express.static("./loan.html"));


app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname+"/loan.html"))
})
app.listen(4000, console.log("Server started on 4000"))