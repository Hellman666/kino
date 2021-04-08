// zapnutí aplikace: npm start
//imports
const express = require('express')
const bodyParser = require('body-parser')
const mysql = require('mysql')

const app = express()
const port = 3000

/*app.use(bodyParser.urlencoded());
app.use(bodyParser.json());

app.use(bodyParser.urlencoded({
    extended: true
  }));*/

const pool = mysql.createPool({
    connectionLimit : 10,
    host            : 'localhost',
    user            : 'root',
    password        : '',
    database        : 'kina'
});
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
    res.render('films', { Text: 'Filmy' }),
    connection.query('SELECT * FROM filmy', function (err, film, fields){
        if(err) throw err 
        
            res.render('films', {title: 'Films Details',
            items: film })
    })
    //res.console(rows)
})

app.get('/actors', (req, res) => {
    res.render('actors', { Text: 'Herci' })
    /*pool.getConnection((err, connection) => {
        if(err) throw err
        console.log('connected as id ${connection.threadId}')
        */
        connection.query('SELECT * FROM herci', (err, herec) =>{
            if(err) throw err

            /*connection.release()
            if(!err){
                res.send(herec)
                //console.log(herec)
            } else {
                console.log(err)
            }
        })*/
        res.render('actors', {title: 'Actors Details',
        items: 'herec'})
    })
})

app.get('/projections', (req, res) => {
    res.render('projections', { Text: 'Projekce' })

   /* pool.getConnection((err, connection) => {
        if(err) throw err
        console.log('connected as id ${connection.threadId}')
*/
        connection.query('SELECT * FROM promitani', (err, projekce) =>{
            if (err) throw err
            res.render('projections', {title: 'Projections Details',
            items: 'projekce'})
            /*connection.release()
            if(!err){
                res.send(projekce)
                //console.log(projekce)
            } else {
                console.log(err)
            }
        })*/
    })
})

app.get('/register', (req, res) => {
    res.render('register', { Text: 'Registrace' })
})

app.get('/login', (req, res) => {
    res.render('login', { Text: 'Přihlášení' })
})

/*app.get('', (req, res) =>{
    res.sendFile(__dirname + '/views/index.html')
})*/




//Get all 
app.get('', (req, res) => {

    pool.getConnection((err, connection) => {
        if(err) throw err 
        console.log('connected as id ${connection.threadId}')
        
        // query(sqlString, callback)
        connection.query('SELECT * from filmy', (err, rows) =>{
            connection.release() //return the connection to pool
            
            if(!err) {
                res.send(rows)
                //console.log(rows)
            } else {
                console.log(err)
            }
        })
    })

})



//get by id
/*app.get('', (req, res) => {

    pool.getConnection((err, connection) => {
        if(err) throw err 
        console.log('connected as id ${connection.threadId}')

        // query(sqlString, callback)
        connection.query('SELECT * from herci ORDER BY idherci', (err, rows) =>{
            connection.release() //return the connection to pool

            if(!err) {
                res.send(rows)
            } else {
                console.log(err)
            }
        })
    })

})
*/

/*app.use('public')
app.use("/bootstrap", express.static(__dirname, 'public/css/bootstrap/dist/css/bootstrap.css'));*/

// Listen on port 3000
app.listen(port, () => console.info(`App listening on port ${port}`))