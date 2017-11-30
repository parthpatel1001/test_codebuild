'use strict';

const express = require('express');

const fs = require('fs');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
 fs.readFile('check.log', 'utf8', function (err,data) {
	  if (err) {
	    return console.log(err);
	  }
	  res.send(JSON.stringify({time: new Date().getTime(), version: data}) + '\n');
	});
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);