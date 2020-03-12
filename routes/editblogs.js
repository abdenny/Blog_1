const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/editblogs', (req, res) => {
  res.render('editblogs.ejs');
});

module.exports = router;
