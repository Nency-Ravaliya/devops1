const express = require('express');
const router = express.Router();
const db = require('../app').db;
const jwt = require('jsonwebtoken');

router.post('/', (req, res) => {
    const token = req.headers['authorization'];
    if (!token) return res.status(403).send('Access denied');

    jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
        if (err) return res.status(403).send('Invalid token');

        const { product_id, quantity } = req.body;
        const query = 'INSERT INTO orders (user_id, product_id, quantity) VALUES (?, ?, ?)';
        db.query(query, [decoded.id, product_id, quantity], (err, result) => {
            if (err) return res.status(500).send('Server error');
            res.status(201).send('Order placed');
        });
    });
});

module.exports = router;
