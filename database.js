const mysql = require("mysql2");
// Read the environment variables
console.log(process.env['Hej Nicklas']);

const mysqlConnection = mysql.createConnection({
    host: process.env['DB.HOST'],
    port: process.env['DB.PORT'],
    user: process.env['DB.USERNAME'],
    database: process.env.DATABASE,
    password: process.env['DB.PASSWORD'],
    multipleStatements: true,
});

mysqlConnection.connect((err) => {
    if (!err) {
        console.log("Connected");
    } else {
        console.log(err);
        console.log("Connection Failed");
    }
});

module.exports = mysqlConnection;