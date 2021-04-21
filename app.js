const express = require('express')
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')
const session = require('express-session')
const connectFlash = require('connect-flash')
const passport = require('passport')
const mysql = require('mysql2');

import configViewEngine from "./configs/viewEngine";
import initWebRoutes from "./routes/web";
import expressEjsLayouts from "express-ejs-layouts"


const app = express()

//use cookie parser
app.use(cookieParser('secret'));
//config session
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: false,
    cookie: {
        maxAge: 1000 * 60 * 60 * 24 // 86400000 1 day
    }
}));
// Enable body parser post data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
//Config view engine
configViewEngine(app);
//Enable flash message;
app.use(connectFlash());
//Config passport middleware
app.use(passport.initialize());
app.use(passport.session());
// init all web routes
initWebRoutes(app);


/*
const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'kina',
})

con.query('SELECT * FROM filmy', (err, rows) => {
    if(err) throw err;
    console.log('Data received from DB:');
    console.log(rows);
    rows.forEach((row) => {
        console.log(row.nazev_cz + " is long " + row.delka);
    });
})
*/

app.get('/', (req, res) => {
    res.render('index', { 
        Text: 'Kino Hvězda', 
    })
})

app.use(expressEjsLayouts);
app.set('layout', './layout');
/*
app.get('/kina', (req, res) => {
    let sql = 'SELECT * FROM filmy';
    let query = db.query(sql, (err, results) => {
        if(err) throw err;
        console.log(results);
        res.send('POsts fetched...');
    });
});
*/
let port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Building a login system with NodeJS is running on port ${port}!`));
