const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/', (req, res) => {
  res.render('index.ejs');
});

module.exports = router;
