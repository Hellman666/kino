import db from "../configs/DBConnection";

let sql = 'SELECT * FROM herci';
let queryResult = [];
let herci = db.query(sql, (err, results) =>{
    if (err) throw err;
    //console.log(results);
    results.forEach((herec) => {
        queryResult.push(herec);
    })
})

let handleActors = (req, res) => {
    res.render("actors.ejs",{
        Text: 'Herci',
        herci: queryResult,
    });
};

module.exports = {
    handleActors: handleActors,
    herci: herci
};
