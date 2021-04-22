import { Router } from "express";
import db from "../configs/DBConnection";
import registerService from "./../services/registerService";

//let sql = 'INSERT INTO '
let sql = 'SELECT * FROM `typ`';
let sql2 = 'SELECT * FROM `zanr_filmu';
//let sql3 = 'INSERT INTO filmy (nazev_cz, delka, typ_idtyp, zanr_filmu_idzanr_filmu) VALUES ("name", 111, 3, 4)';

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

let createNewFilm = async(req, res) => {
    let newFilm = {
        nazev: req.body.nazev_cz,
        delka: req.body.delka,
        typ: req.body.typ_idtyp,
        zanr: req.body.zanr_filmu_idzanr_filmu
    };
    try{
        await registerService.createNewFilm(newFilm);
    } catch (err) {
        req.flash('errors', err);
        return res.redirect('/addFilm');
    }
}


let handleNewFilm = (req, res) => {
    res.render('addFilm.ejs', {
        Text: 'Nový film',
        get: queryResult,
        get2: queryResult2,
        errors: req.flash('errors')
    }) 
}
module.exports = {
    handleNewFilm: handleNewFilm,
    createNewFilm: createNewFilm
};