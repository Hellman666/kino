const mysql = require ('mysql');
const dbConnection = mysql.createPool({
    host        :   'localhost',
    user        :   'root',
    password    :   '',
    database    :   'kina'
}).promise();
module.exports = dbConnection