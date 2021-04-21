import db from "../configs/DBConnection";

//let sql = 'INSERT INTO '
let sql = 'SELECT * FROM `typ`';
let sql2 = 'SELECT * FROM `zanr_filmu';

let queryResult = [];
let queryResult2 = [];

let get = db.query(sql, (err, results) => {
    if (err) throw err;
    results.forEach((get) =>{
        queryResult.push(get);
    })
})

let get2 = db.query(sql2, (err, results) => {
    if(err) throw err;
    results.forEach((get2) => {
        queryResult2.push(get2);
    })
})

let handleNewFilm = (req, res) => {
    res.render('addFilm.ejs', {
        Text: 'Nový film',
        get: queryResult,
        get2: queryResult2,
    }) 
}
module.exports = {
    handleNewFilm: handleNewFilm
};