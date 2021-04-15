import { resolveInclude } from "ejs";
import db from "../configs/DBConnection";
import service from "../services/Service";
/*
DBConnection.query(
    'SELECT * FROM filmy', 
    (err, rows) => {
    if(err) throw err;
    console.log('Data received from DB:');
    //console.log(rows);
    rows.forEach((row) => {
        console.log(row);
    });
});
*/

/*
let query = db.query(sql, (err, results) => {
    if(err) throw err;
    console.log(results);
    res.send('POsts fetched...');
});

let filmy = (req) => {
    db.query(
        'SELECT * FROM filmy', 
        (err, rows) => {
        if(err) throw err;
        console.log('Data received from DB:');
        console.log(rows);
        rows.forEach((row) => {
            
        });
    })
}
*/

let sql = 'SELECT * FROM filmy';
let queryResult;
let filmy = db.query(sql, (err, results) =>{
    if (err) throw err;
    console.log(results);
    //queryResult = results;
    results.forEach((film) => {
        queryResult = film;
        //console.log(film.nazev_filmu + " " + film.delka);
    })
})


let handleFilms = (req, res) => {
    res.render('films.ejs', {
        Text: 'Kino Hvězda',
        filmy: queryResult,
    }) 
}


module.exports = {
    handleFilms: handleFilms,
};
