const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');

const axios = require("axios");

const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/api', (req, res) => {
  axios.get(
    "https://itch.io/api/1/zJgbfInBx6rW9asVDLu078dM9jQD3xD0jnbOjWTr/my-games"
    ).then((response) => {
      res.status(200).json({
        success: true,
        result: response.data.games
      });
    }).catch((err) => {
      res.status(500);
    })
});

app.use(express.static(path.join(__dirname, 'build')));

app.use('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'build/index.html'));
});



app.listen(process.env.PORT || 3000, () => console.log(`Running on PORT ${process.env.PORT || 3000}`));