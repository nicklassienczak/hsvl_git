const mysql = require("mysql2");
require('dotenv').config();
// Read the environment variables
console.log('Hej Nicklas');

const mysqlConnection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.MYSQL_USER,
    port: 3306,
    database: "hsvl_database",
    password: process.env.PASSWORD,
    multipleStatements: true,
    ssl: {
        rejectUnauthorized: this.host === "localhost"
    }
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