const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;
require('dotenv');
const mysqlConnection = require("./database");
// Your github page origin has to be written EXACTLY like this! https://behu-kea.github.io
const URL_FOR_FRONTEND = "YOUR_GITHUB_PAGE_ORIGIN_HERE";

let users = require("./data"); // users array imported from data.js

//Connect to database
//Mit brugernavn er: DET DER STÅR I DB.USER
//Min kode er: asdjlas

app.use(express.json()); //Used to parse JSON bodies
app.use(express.urlencoded({ extended: true })); //Parse URL-encoded bodies

// If the application is running localhost allow all requests,
// otherwise add cors for specific website
// Remember to add the NODE_ENV="prod" on server!
const cors_url = process.env.NODE_ENV === "prod" ? URL_FOR_FRONTEND : "*";
app.use(
    cors({
        origin: cors_url
    })
);

app.get("/", (req, res) => {
    res.send("Hvad skal vi lave!");
});

// READ: read all users from users
app.get("/users", (req, res) => {
    return res.json(users);
});

app.get('/users/:user_id', (req, res) => {
    const query = "SELECT * FROM users WHERE user_id = ?;";
    const user_id = req.params.user_id;
    mysqlConnection.query(
        query,
        [user_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
})

/*
// READ: get user by id
app.get("/users/:user_id", (req, res) => {
    const id = req.params.id;
    const user = users.find(item => item.id == id);
    return res.json(user);
});

// CREATE: create new user and add to users
app.post("/users", (req, res) => {
    let newUser = req.body;
    const timestamp = Date.now(); // dummy generated user id
    newUser.id = timestamp;
    users.push(newUser);
    return res.json(users);
});

// UPDATE: update existing user
app.put("/users/:id", (req, res) => {
    const id = req.params.id;
    const userData = req.body;
    let user = users.find(item => item.id == id);
    user.name = userData.name;
    user.title = userData.title;
    user.mail = userData.mail;
    user.image = userData.image;
    return res.json(users);
});

// DELETE: delete user
app.delete("/users/:id", (req, res) => {
    const id = req.params.id;
    users = users.filter(item => item.id != id);
    return res.json(users);
});
*/

app.listen(port, () => {
    console.log(`Node.js REST API listening at http://localhost:${port}`);
});
