//imports
const express = require('express')
const app = express()
const port = 3000

//static files
app.use(express.static('public'))
app.use('/css', express.static(__dirname + 'public/css'))
app.use('/js', express.static(__dirname + 'public/js'))
app.use('/img', express.static(__dirname + 'public/img'))

//set views
app.set('views', './views');
app.set('view engine', 'ejs');

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
    res.render('actors', { Text: 'Actors Page' })
})

app.get('/projections', (req, res) => {
    res.render('projections', { Text: 'Projections Page' })
})

app.get('/register', (req, res) => {
    res.render('register', { Text: 'Register Page' })
})

app.get('/login', (req, res) => {
    res.render('login', { Text: 'Login Page' })
})

/*app.get('', (req, res) =>{
    res.sendFile(__dirname + '/views/index.html')
})*/



/*app.use('node_modules')
app.use("/bootstrap", express.static(__dirname, 'public/css/bootstrap/dist/css/bootstrap.css'));*/

// Listen on port 3000
app.listen(port, () => console.info(`App listening on port ${port}`))