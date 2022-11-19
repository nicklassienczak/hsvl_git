const express = require("express");
const cors = require("cors");
const app = express();
const port = process.env.PORT || 3030;
require('dotenv');
const mysqlConnection = require("./database");


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
    const query = "SELECT * FROM hsvl_database.users;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});


// Get users by user_id
app.get('/users/:user_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.users WHERE user_id = ?;";
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
});

// Get all cities from cities
app.get('/cities', (req, res) => {
    const query = "SELECT * FROM hsvl_database.cities;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get cities by id
app.get('/cities/:city_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.cities WHERE city_id = ?;";
    const city_id = req.params.city_id;
    mysqlConnection.query(
        query,
        [city_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get all locations from locations
app.get('/locations', (req, res) => {
    const query = "SELECT * FROM hsvl_database.locations;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get locations by id
app.get('/locations/:location_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.locations WHERE location_id = ?;";
    const location_id = req.params.location_id;
    mysqlConnection.query(
        query,
        [location_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get all activities from activities
app.get('/activities', (req, res) => {
    const query = "SELECT * FROM hsvl_database.activities;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get activities by id
app.get('/activities/id/:activity_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.activities WHERE activity_id = ?;";
    const activity_id = req.params.activity_id;
    mysqlConnection.query(
        query,
        [activity_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get activities by season
app.get('/activities/season/:season', (req, res) => {
    const query = "SELECT * FROM hsvl_database.activities WHERE season = ?;";
    const season = req.params.season;
    mysqlConnection.query(
        query,
        [season],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});
// Get all seasons from seasons
app.get('/seasons', (req, res) => {
    const query = "SELECT * FROM hsvl_database.seasons;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get seasons by id
app.get('/seasons/:season_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.seasons WHERE season_id = ?;";
    const favourite_id = req.params.season_id;
    mysqlConnection.query(
        query,
        [season_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});


// Get all favourites from favourites
app.get('/favourites', (req, res) => {
    const query = "SELECT * FROM hsvl_database.favourites;";
    mysqlConnection.query(
        query,
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// Get favourites by id
app.get('/favourites/:favourite_id', (req, res) => {
    const query = "SELECT * FROM hsvl_database.favourites WHERE favourite_id = ?;";
    const favourite_id = req.params.favourite_id;
    mysqlConnection.query(
        query,
        [favourite_id],
        (err, results, fields) => {
            if (!err) {
                return res.json(results);
            } else {
                console.log(err);
            }
        }
    );
});

// CREATE: create new user and add to users
app.post("/users", (req, res) => {
    const query = `INSERT INTO users (userName, age, email) VALUES (?, ?, ?);`;
    const userName = req.body.userName;
    const age = req.body.age;
    const email = req.body.email;
    mysqlConnection.query(
        query,
        [userName, age, email],
        (err, results, fields) => {
            if (!err) {
                res.sendStatus(200);
            } else {
                console.log(err);
                res.sendStatus(500);
            }
        }
    );
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


app.listen(port, () => {
    console.log(`Node.js REST API listening at http://localhost:${port}`);
});