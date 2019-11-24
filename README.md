# market-for-learning-mysql
This repository contains code written for educational purposes.

The sole purpose of the code is to help the students getting familiar with SQL to increase their sql querying skills.

In order to set it up, export the database from the market.sql file.

The project is written in PHP. In db.php you need to set up the MySql DSN. Just update the following variables with the values correct for your development setup.

$host = '';
$username = '';
$password = '';
$databaseName = '';

That's it. If you now open the project from your local server, you should be welcomed with a view of a online market showing all the projects contained in the database.
To increase your SQL quering skills, try to write SQL queries for the following scenarios.

1. Find all the products that have free shipping
2. Find all the producs that have free shipping and have discount
3. Find all the products that are cheaper than 10$ (including discount)
4. Find all the products that are cheaper than 10$ (excluding discount)
5. Find all the products which have discount bigger than 5$
6. Find all the products from category 'Automotive'
7. Find all the products from category 'Automotive' and which have discount and free shipping
8. Find all the products bought by John Doe
9. Find all the products that are added in someone's cart
10. Find all the products purchased by a person whose surname starts with 'D'
11. Find all the products that are purchased, but the order is still not fully completed