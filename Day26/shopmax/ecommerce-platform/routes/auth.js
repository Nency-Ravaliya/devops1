const express = require('express');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const router = express.Router();
const db = require('../app').db;

router.post('/register', async (req, res) => {
    const { username, password, email } = req.body;
    
    try {
        const hashedPassword = await bcrypt.hash(password, 10);
        const query = 'INSERT INTO users (username, password, email) VALUES (?, ?, ?)';
        db.query(query, [username, hashedPassword, email], (err, result) => {
            if (err) return res.status(500).send('Server error');
            res.status(201).send('User registered');
        });
    } catch (error) {
        res.status(500).send('Server error');
    }
});

module.exports = router;
