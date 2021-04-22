import registerService from "./../services/registerService";


//let sql = 'INSERT INTO '
let handleNewActor = (req, res) => {
    res.render('addActor.ejs', {
        Text: 'Nový Herec',
    }) 
}

let createNewActor = async(req, res) => {
    let newActor = {
        jmeno: req.body.jmeno,
        prijmeni: req.body.prijmeni,
        datum_narozeni: req.body.datum_narozeni,
        jmeno_postavy: req.body.jmeno_postavy
    };
    try{
        await registerService.createNewActor(newActor);
    } catch (err) {
        req.flash('errors', err);
        return res.redirect('/addActor');
    }
}

module.exports = {
    handleNewActor: handleNewActor,
    createNewActor: createNewActor
};