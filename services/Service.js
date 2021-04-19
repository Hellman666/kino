import db from "../configs/DBConnection";
/*db.query('SELECT * FROM filmy', (err, rows) => {
    if(err) throw err;
    console.log('Data received from DB:');
    console.log(rows);
    rows.forEach((row) => {
        console.log(row.nazev_cz + " is long " + row.delka);
    });
})*/
/*let filmy = () => {
    return new Promise((resolve, reject) => {
        try{
            db.query(
                'SELECT * FROM filmy', 
                (err, rows) => {
                if(err) throw err;
                console.log('Data received from DB:');
                console.log(rows);
                rows.forEach((row) => {
                    resolve(row);
                    console.log(row.nazev_cz + " is long " + row.delka);
                });
            })
        }catch(err){
            reject(err);
        }
    });
};

let herci = () => {
    return new Promise((resolve, reject) => {
        try{
            db.query(
                'SELECT * FROM herci', 
                (err, rows) => {
                if(err) throw err;
                console.log('Data received from DB:');
                console.log(rows);
                rows.forEach((row) => {
                    resolve(row);
                    console.log(row.jmeno + " " + row.prijmeni);
                });
            })
        }catch(err){
            reject(err);
        }
    });
};

module.exports = {
    filmy: filmy,
    herci: herci,
}*/