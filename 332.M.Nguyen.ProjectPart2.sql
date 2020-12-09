/*
	Michael Nguyen
    December 1, 2020
    
    Project Part 2
*/

DESC artist;

INSERT INTO artist (Name, Phone, Address, Birth_place, Age, Style_of_Art)
VALUES ("Michael Nguyen", "1112223333", "605 N Gates St", "Fountain Valley, CA", 22, "Sculpture");
INSERT INTO artist
VALUES ("Jonathan Corwin", "1112223334", "612 N Gates St", "Long Beach, CA", 29, "Sculpture");
INSERT INTO artist
VALUES ("Xiang Ling", "1112223335", "23 Alham Street", "Huntington Beach, CA", 29, "Sculpture");
INSERT INTO artist
VALUES ("Xiao lin", "1112223336", "123 Sesame Street", "Fountain Valley, CA", 29, "Sculpture");
INSERT INTO artist
VALUES ("Shi Fui", "1112223332", "231 City Way Dr", "Fountain Valley, CA", 29, "Pop Art");
INSERT INTO artist
VALUES ("Maria Antoinette", "1112223334", "Golden Gate St", "Fountain Valley, CA", 29, "Pop Art");
INSERT INTO artist
VALUES ("Eliza Ham", "1112223234", "1231 Hazard Avenue", "Orange County, CA", 29, "Pop Art");
INSERT INTO artist
VALUES ("Beth Vu", "1112123334", "9012 Flinton Dr", "Garden Grove, CA", 29, "Pop Art");
INSERT INTO artist
VALUES ("Michelle Nguyen", "1132223334", "8423 Random Address", "Westminister, CA", 29, "Surrealism");
INSERT INTO artist
VALUES ("Vivian Nguyen", "1112823334", "2 Address Drive", "Westminister, CA", 29, "Surrealism");
INSERT INTO artist
VALUES ("Mary Wellbert", "1112423334", "21 Jump Street", "Garden Grove, CA", 29, "Surrealism");
INSERT INTO artist
VALUES ("Francois Hoo", "1112223934", "Address Random Street", "Santa Ana, CA", 29, "Surrealism");
INSERT INTO artist
VALUES ("Napoleon Icecream", "1112323334", "213 N Gates St", "Detroit, CA", 29, "Conceptual Art");
INSERT INTO artist
VALUES ("Janet McCarthy", "1112123334", "333 N Gates St", "Compton, CA", 29, "Conceptual Art");
INSERT INTO artist
VALUES ("Victoria Justice", "2112223334", "222 N Gates St", "Hampton, CA", 29, "Conceptual Art");
INSERT INTO artist
VALUES ("Megan Carly", "1142223334", "111 N Gates St", "Stockton, CA", 29, "Conceptual Art");

SELECT * FROM artist;

DESC art_work;

INSERT INTO art_work (Title, Artist, Type_of_Art, Date_of_Creation, Date_Acquired, Price, Location)
VALUES ("The Thinker", "Michael Nguyen", "Sculpture", '2020-6-8', '2020-12-1', 1000000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Climber", "Jonathan Corwin", "Sculpture", '2002-6-8', '2020-12-1', 123142, "Garden Stadium");
INSERT INTO art_work
VALUES ("Tea", "Xiang Ling", "Sculpture", '2020-6-8', '2010-12-2', 250000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Steam", "Xiao lin", "Sculpture", '2020-6-8', '2013-12-3', 10000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Soda", "Shi Fui", "Pop Art", '2020-6-8', '2013-12-4', 123000, "Garden Stadium");
INSERT INTO art_work
VALUES ("CanCan", "Maria Antoinette", "Pop Art", '2016-6-5', '2020-12-1', 1000000, "Garden Stadium");
INSERT INTO art_work
VALUES ("MusicalNotes", "Eliza Ham", "Pop Art", '2021-6-6', '2020-12-1', 10000, "Garden Stadium");
INSERT INTO art_work
VALUES ("LoveLife", "Beth Vu", "Pop Art", '2011-6-7', '2020-12-1', 50000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Stormy Weather", "Vivian Nguyen", "Surrealism", '2012-6-2', '2020-12-1', 23000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Terror of Ionia", "Mary Wellbert", "Surrealism", '2013-6-1', '2020-12-1', 60000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Cry to Bed", "Francois Hoo", "Surrealism", '2020-6-8', '2014-12-2', 65000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Project Hard", "Napoleon Icecream", "Surrealism", '2015-2-3', '2020-12-1', 420111, "Garden Stadium");
INSERT INTO art_work
VALUES ("Database 2 Hard", "Janet McCarthy", "Conceptual Art", '2016-6-1', '2020-12-1', 2311111, "Garden Stadium");
INSERT INTO art_work
VALUES ("Masago", "Victoria Justice", "Conceptual Art", '2020-6-9', '2017-12-1', 30000, "Garden Stadium");
INSERT INTO art_work
VALUES ("Imitation Crab", "Megan Carly", "Conceptual Art", '2020-5-8', '2018-12-1', 90000, "Garden Stadium");

SELECT * FROM art_work;

DESC art_shows;

INSERT INTO art_shows (Location, Artist, Date_and_Time, Contact, Contact_Phone)
VALUES ("Garden Stadium", "Michael Nguyen", "2020-12-1", "71499988888", "1112223333");

SELECT * FROM art_shows;

DESC customer;

INSERT INTO customer (Customer_Number, Phone, Art_Preference)
VALUES ("0001", "7149998888", "Sculpture");
INSERT INTO customer
VALUES ("0003", "7149992388", "Pop Art");
INSERT INTO customer
VALUES ("0005", "7149998758", "Sculpture");
INSERT INTO customer
VALUES ("0012", "7142228758", "Surrealism");
INSERT INTO customer
VALUES ("0023", "7143298758", "Conceptual Art");
INSERT INTO customer
VALUES ("0101", "7141998758", "Sculpture");

SELECT * FROM customer;