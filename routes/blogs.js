const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/blogs/:id', (req, res) => {
  let blog_id = req.params.id;
  db.query(
    `SELECT * FROM blogs INNER JOIN authors ON blogs.author_id = authors.id WHERE blogs.id=${blog_id}`
  ).then(results => {
    res.render('blogs', {
      blog: results
    });
  });
});

module.exports = router;
