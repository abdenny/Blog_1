const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/blogs', (req, res) => {
  res.render('blogs.ejs');
});

module.exports = router;
