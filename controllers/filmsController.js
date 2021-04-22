import { resolveInclude } from "ejs";
import db from "../configs/DBConnection";
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

let sql = 'SELECT * FROM filmy JOIN typ ON filmy.typ_idtyp = typ.idtyp JOIN zanr_filmu ON idzanr_filmu = zanr_filmu_idzanr_filmu';
let queryResult = [];
//zanr_filmu.zanr_filmu where idzanr_filmu = typ_idtyp
let filmy = db.query(sql, (err, results) =>{
    if (err) throw err;
    //console.log(results);
    //queryResult = results;
    results.forEach((film) => {
        queryResult.push(film);
    })
    console.log(queryResult)
})


let handleFilms = (req, res) => {
    res.render('films.ejs', {
        Text: 'Filmy',
        filmy: queryResult,
    }) 
}


module.exports = {
    handleFilms: handleFilms,
    filmy: filmy,
};
