const express = require('express')
const { Hooks } = require('@restqa/restqa')

const PORT = 8000

const opt = {
  readOnly: false,
  route: '/restqa'
};

const app = express()

Hooks.express(app, opt)

app
  .get('/', (req, res) => {
    res
      .json({ message: 'Welcome'})
  })
  .get('/not-found', (req, res) => {
    res
      .status(404)
      .json({ message: 'Ressource not found'})
  })
  .listen(PORT, () => {
    setInterval(() => {
      console.log(`Server running on the host http://localhost:${PORT}`)
    }, 500)
  })
