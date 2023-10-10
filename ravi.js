const express = require('express')
const app = express()
const port = 3000

app.get('/varma', (req, res) => {
  res.send("This is varma's World!")
})

app.listen(port, () => {
  console.log(`ravi app listening on port ${port}`)
})
