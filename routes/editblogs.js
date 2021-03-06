const express = require('express');
const router = express.Router();
let db = require('../models/database.js');
let bodyParser = require('body-parser');

router.get('/editblogs', (req, res) => {
  let renderedCat = '';
  let renderedAuth = '';
  db.query('SELECT * FROM categories').then(results => {
    renderedCat = results;
    db.query('SELECT * FROM authors').then(results2 => {
      renderedAuth = results2;
      res.render('editblogs', {
        authors: renderedAuth,
        categories: renderedCat
      });
    });
  });
});

router.use(bodyParser.urlencoded({ extended: false }));

router.post('/editblogs', (req, res) => {
  console.log(req.body);
  let title = req.body.title;
  let author_id = req.body.author_id;
  let category_id = parseInt(req.body.category_id);
  let body = req.body.body;
  let date_pub = req.body.date_pub;
  db.none(
    'INSERT INTO blogs (title, author_id, category_id, body, date_pub) VALUES ($1, $2, $3, $4, $5)',
    [title, author_id, category_id, body, date_pub]
  )
    .then(() => {
      res.redirect('/');
    })
    .catch(error => {
      res.send(error);
    });
});

module.exports = router;
