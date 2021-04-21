//let sql = 'INSERT INTO '
let handleNewActor = (req, res) => {
    res.render('addActor.ejs', {
        Text: 'Nový Herec',
    }) 
}
module.exports = {
    handleNewActor: handleNewActor
};