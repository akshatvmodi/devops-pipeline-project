const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json({ message: 'Hello from DevOps pipeline!' });
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

app.get('/api/hello', (req, res) => {
  res.json({ hello: 'world' });
});

module.exports = app;