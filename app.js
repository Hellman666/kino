const express = require('express')
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')
const session = require('express-session')
const connectFlash = require('connect-flash')
const passport = require('passport')

import configViewEngine from "./configs/viewEngine";
import initWebRoutes from "./routes/web";

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

app.get('/index', (req, res) => {
    res.render('index', { Text: 'Kino Hvězda' })
})

app.get('/about', (req, res) => {
    res.render('about', { Text: 'O kině' })
})

app.get('/films', (req, res) => {
    res.render('films', { Text: 'Filmy' })
})

app.get('/actors', (req, res) => {
    res.render('actors', { Text: 'Herci' })
})

app.get('/projections', (req, res) => {
    res.render('projections', { Text: 'Projekce' })
})


let port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Building a login system with NodeJS is running on port ${port}!`));
