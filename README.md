# MySoulmate
An online Dating Web Application built with HTML, CSS and PHP and a SQL server.
# How it works
Users can "SIGN UP" and interact with other users of opposite genders with the hope of finding a match. 
All user interactions are recorded in a unified SQL database containing eight unique tables. 

Figure 1 is an Entity-relational (ER) diagram that describes the various entity sets and the relationships between them on the website. There are 8 entity sets and eight relationships in total. In the dating website new users will primarily begin by signing up for an account by adding demographic details about themselves, also their preferences in people, which will get recorded in the "USERS" and "PREFERENCES" tables respectively; old users will typically "LOG IN" in with their user_ids and passwords, then begin "EXPLORING" by viewing the profiles of other users and also their preferences while hitting "LIKE" or "PASS" buttons, if a user logs in and looks through their list of likes and they accept a "MATCH" request, then they have an option to "MATCH" or "PASS". Also, a user can "UPDATE" their preferences or "EDIT" their profile as they wish. 
# Datatypes
The three primary datatypes will be "TEXT" for attributes like name, address, hobbies, race, location, conversations; "INT" for attributes like "AGE" and "USER_ID", and the datatype for Timestamps, will be "DATETIME".
# Entity Relationship Diagram
[Figure 1](ER_model.png)
