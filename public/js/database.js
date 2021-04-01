const mysql = require ('mysql');
const dbConnection = mysql.createPool({
    host        :   'localhost',
    user        :   'root',
    password    :   '';
    database    :   ''
}).promise();
module.exports = dbConnection