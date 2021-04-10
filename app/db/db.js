const mysql = require('mysql2');

// Create connect db .
const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password:"12345",
    database: 'botc',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0 ,
    multipleStatements:true
});

module.exports = pool
