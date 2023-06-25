# database-fun

A simple database of mock user info, coupled with a Ruby script for efficiently verifying, encrypting, and updating data.

![Screenshot from 2023-06-25 00-33-35](https://github.com/erikamaker/database-fun/assets/118931925/9459e778-eb6c-41a3-a916-8e686e75a4d5)


# Project Summary

* This project uses a SQLite database that stores username and password information.
* The Ruby script allows for retrieving user information, updating passwords, and verifying entered passwords.
* Passwords are stored encrypted using the `bcrypt` gem (see: string after username 'billie_joe|' in Sqlite3 screencap).
* The project showcases basic database operations and password management functionality.
* The project uses efficient data retrieval practices, leveraging Big-0 Notation (see below).


# Big-0 Notation

By creating an index on the username column in our SQLite database, we've optimized the user retrieval operation. Before the index was created, SQLite had to scan every record in the database until it found a match with the provided username. This represents a linear time complexity, or O(n), where 'n' represents the number of records in the database.

Additionally, we implemented a feature to retrieve the total number of users. The operation to count the number of records is considered to have constant time complexity, or O(1), because it takes the same amount of time to perform this operation regardless of the size of the database.

So in terms of Big-O notation, we've have worked with O(n) (linear time), O(log n) (logarithmic time), and O(1) (constant time) complexities in this project.


# Binary Search Tree

After creating the index, SQLite can now use a binary search tree (BST) for lookups. In a BST, the search operation starts at the root of the tree and, based on comparisons with the target value, continues either on the left or the right subtree. This allows the database to quickly exclude half of the remaining records with each comparison, leading to a logarithmic time complexity, or O(log n).

In the context of Big-O notation, we've improved the time complexity of the user retrieval operation from O(n) to O(log n) by adding an index to the username column. This is significantly more efficient when dealing with large numbers of records.





