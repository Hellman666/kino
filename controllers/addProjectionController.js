import db from "../configs/DBConnection";
import registerService from "./../services/registerService";

//let sql = 'INSERT INTO '
let sql = 'SELECT * FROM `filmy`';
let sql2 = 'SELECT * FROM saly';

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

let handleNewProjection = (req, res) => {
    res.render('addProjection.ejs', {
        Text: 'Nový film',
        get: queryResult,
        get2: queryResult2,
    }) 
}

let createNewProjection = async(req, res) => {
    let newProjection = {
        datum: req.body.datum,
        cas: req.body.cas,
        filmy: req.body.filmy_idfilmy,
        saly: req.body.saly_idsaly
    };
    try{
        await registerService.createNewProjection(newProjection);
    } catch (err) {
        req.flash('errors', err);
        return res.redirect('/addProjection');
    }
}

module.exports = {
    handleNewProjection: handleNewProjection,
    createNewProjection: createNewProjection
};