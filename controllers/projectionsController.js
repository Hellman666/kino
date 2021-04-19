import db from "../configs/DBConnection";

let sql = 'SELECT * FROM promitani JOIN filmy ON filmy.idfilmy = promitani.filmy_idfilmy';
let queryResult = [];
let promitani = db.query(sql, (err, results) =>{
    if (err) throw err;
    //console.log(results);
    results.forEach((projekce) => {
        queryResult.push(projekce);
    })
})

let handleProjections = async (req, res) => {
    return res.render("projections.ejs",{
        Text: 'Projekce',
        projekce: queryResult,
    });
};

module.exports = {
    handleProjections: handleProjections,
};
