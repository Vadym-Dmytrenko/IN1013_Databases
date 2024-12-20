CREATE TABLE petPet(
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45)
    species VARCHAR(45),
    gender VARCHAR(4),
    birth DATE,
    death DATE
);

CREATE TABLE petEvent(
    petname VARCHAR (20) FOREIGN KEY (petPet),
    eventdate DATE,
    eventype VARCHAR (15),
    remark VARCHAR (255),
    PRIMARY KEY (petname, eventdate),
    FOREIGN KEY (petname) REFERENCES petPet (petname)
);