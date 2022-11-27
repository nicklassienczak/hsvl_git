
CREATE TABLE users (
    user_id INT UNIQUE AUTO_INCREMENT,
    userName VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id)
);


CREATE TABLE cities (
    city_id INT NOT NULL UNIQUE,
    city VARCHAR(255) NOT NULL,
    zip_code INT NOT NULL,
    PRIMARY KEY (city_id)
);



CREATE TABLE locations (
    location_id INT NOT NULL UNIQUE,
    location VARCHAR(255) NOT NULL,
    latitude DECIMAL(17,15) NOT NULL,
    longitude DECIMAL(17,15) NOT NULL,
    city_id INT NOT NULL,
    PRIMARY KEY (location_id)
);


CREATE TABLE seasons (
    season_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    season VARCHAR(50),
    PRIMARY KEY (season_id)
    );


CREATE TABLE activities (
    activity_id INT NOT NULL UNIQUE,
    activity VARCHAR(255) NOT NULL,
    popularity DECIMAL(4,2) NOT NULL,
    season_id INT NOT NULL,
    location_id INT NOT NULL,
    PRIMARY KEY (activity_id)
);


CREATE TABLE favourites (
    favourite_id INT NOT NULL UNIQUE AUTO_INCREMENT,
    user_id INT NOT NULL,
    activity_id INT NOT NULL,
    PRIMARY KEY (favourite_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- seasons data
INSERT INTO seasons (`season`)
                     VALUES ('Sommer');
INSERT INTO seasons (`season`)
                     VALUES ('Vinter');
INSERT INTO seasons (`season`)
                     VALUES ('Forår');
INSERT INTO seasons (`season`)
                     VALUES ('Efterår');
INSERT INTO seasons (`season`)
                     VALUES ('Hele året');
INSERT INTO seasons (`season`)
                     VALUES ('Forår / Sommer');
INSERT INTO seasons (`season`)
                     VALUES ('Efterår / Vinter');


-- users data
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Nicklas Knudsen', 24, 'nicklas123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Arne Fogh', 22, 'arne123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('David Jørgensen', 23, 'david123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Azra Hamid', 19, 'azra123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Frederik Kløcker', 25, 'frederikZK123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Frederik Vigsø', 26, 'frederikV123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Mads Poulsen', 22, 'madsP123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Jeppe Jæger', 25, 'jeppeJ123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Abdul Hashmi', 19, 'abdul123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Alisa Shalja', 20, 'alisa123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Amalie Andersen', 23, 'amalie123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Ammar Mahmood', 19, 'ammar123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Christian Pedersen', 21, 'christian23@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Christoffer Holm', 22, 'christoffer123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Deniz Okumus', 22, 'topG123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Frederik Marrero', 25, 'frederikM123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Gustav Frederiksen', 21, 'gustavF123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Gustav Strandberg', 22, 'gustavS123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Gustav Christensen', 23, 'gustavC123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Hans Nielsen', 19, 'hans123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Klara Blauenfeldt', 21, 'klara123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Lasse Rasmussen', 26, 'lasse123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Lenah Githambo', 24, 'lenah123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Maheen Ilyas', 19, 'maheen123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Nadine Hejazi', 20, 'nadine123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Oliver Kluge', 21, 'oliver123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Oskar Rosengreen', 23, 'oskar123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Phillip Schäffer', 22, 'phillip123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('Rajana Bagaeva', 23, 'rajana123@gmail.com');
INSERT INTO users (`userName`, age, `email`)
                     VALUES ('William Mathiesen', 22, 'william123@gmail.com');

-- cities data
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (1, 'København N', 2200);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (2, 'København S', 2300);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (3, 'Frederiksberg', 2000);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (4, 'København K', 1424);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (5, 'København S', 2300);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (6, 'København K', 1257);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (7, 'København K', 1350);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (8, 'København Ø', 2100);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (9, 'Nordhavn', 2150);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (10, 'Klampenborg', 2930);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (11, 'København K', 1414);
INSERT INTO cities (city_id, `city`, zip_code)
                     VALUES (12, 'København K', 1123);


-- locations data
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (1, 'Nørrebrogade 210', 55.698990, 12.542120, 1);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (2, 'Islands Brygge 14', 55.662010, 12.571850, 2);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (3, 'Overgaden Neden Vandet 41', 55.673520, 12.591920, 11);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (4, 'Gothersgade 128', 55.684890, 12.573240, 4);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (5, 'Amalienborg Slotsplads 5', 55.684130, 12.592730, 6);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (6, 'Gl. Hovedvagt, Kastellet 1', 55.690460, 12.595370, 8);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (7, 'Helsinkigade 30', 55.708390, 12.595350, 9);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (8, 'Øster Voldgade 4A', 55.686720, 12.577380, 7);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (9, 'Roskildevej 28 A', 55.675207, 12.525895, 3);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (10, 'Amager Strand Promenaden 1', 55.654333, 12.649180, 2);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (11, 'Dyrehaven', 55.775920, 12.578100, 10);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (12, 'Nannasgade 4', 55.699820, 12.549407, 1);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (13, 'Kapelvej 2', 55.691386, 12.550695, 1);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (14, 'Øster Allé 37', 55.702504, 12.569821, 8);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (15, 'Stokholmsgade 20', 55.689716, 12.579271, 8);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (16, 'Pile Allé 55', 55.669065, 12.524376, 3);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (17, 'Bülowsvej 17 20', 55.680829, 12.542184, 3);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (20, 'Strandvejen 340', 55.777714, 12.591115, 10);
INSERT INTO locations (location_id, `location`, latitude, longitude, city_id)
                     VALUES (21, 'Dyrehaven 4', 55.795166, 12.571507, 10);



-- actitives data
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (1, 'Den røde plads', 71.22, 1, 1);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (2, 'Havne badet, Islands Brygge', 80.17, 1, 2);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (3, 'Greenkayak - Christianshavn', 97.13, 1, 3);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (4, 'Botanisk Have', 67.43, 7, 4);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (5, 'Amalienborg Slot', 47.42, 1, 5);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (6, 'Kastellet', 51.10, 2, 6);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (7, 'Konditaget Lüders', 64.23, 2, 7);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (8, 'Kongens Have', 69.30, 3, 8);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (9, 'Frederiksberg Have', 83.90, 4, 9);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (10, 'Amager Strandpark', 77.50, 5, 10);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (11, 'Jægersborg Dyrehave', 39.89, 6, 11);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (12, 'BaNanna Park', 77.50, 5, 12);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (13, 'Assistens Kirkegård', 39.89, 6, 13);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (14, 'Fælledparken', 76.19, 6, 14);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (15, 'Østre Anlæg', 52.11, 6, 15);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (16, 'Søndermarken', 82.49, 1, 16);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (17, 'Landbohøjskolens Have', 31.71, 3, 17);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (20, 'Bellevue Strand', 89.83, 1, 20);
INSERT INTO activities (activity_id, `activity`, popularity, season_id, location_id)
                     VALUES (21, 'Eremitageslottet', 39.97, 5, 21);


-- favourites data
INSERT INTO favourites (user_id, activity_id)
                     VALUES (1, 2);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (2, 8);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (3, 4);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (4, 7);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (1, 3);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (22, 4);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (15, 7);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (12, 3);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (12, 4);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (5, 7);
INSERT INTO favourites (user_id, activity_id)
                     VALUES (13, 3);

USE hsvl_database;
