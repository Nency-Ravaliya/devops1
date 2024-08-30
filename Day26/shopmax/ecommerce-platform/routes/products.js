const express = require('express');
const router = express.Router();
const db = require('../app').db;

router.get('/', (req, res) => {
    const query = 'SELECT * FROM products';
    db.query(query, (err, results) => {
        if (err) return res.status(500).send('Server error');
        res.json(results);
    });
});

module.exports = router;
