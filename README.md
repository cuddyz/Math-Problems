# Math-Problems
Project 1 for UMSL CS 4610

# Tech Stack:
DB: MySQL
<br>
Backend: PHP
<br>
Frontend: AngularJS

Was required by the class to write a PHP web app.  My goal was to write as little PHP as possible and let Angular do all the client work.

PHP makes the calls to the SQL server, everything else handled by Angular via REST calls to the PHP files.

This is built using XAMPP.

To run you must do three things:

1. Open XAMPP Manager and turn on the Apache Web Server and MySql connection
2. Download this project and place it in your XAMPP htdocs directory (so localhost can find it).
  Ex. My directory: `~/Application/XAMPP/xamppfiles/htdocs/Math-Problems`
3. Install the mysql file located in the `db` folder of this project, onto your MySQL Server running from XAMPP.
  Ex. You can find it at `localhost/phpmyadmin`
  
After all that is done, just navigate to `localhost/Math-Problems/index.php` and you should be good to go.
If not, then one of the above steps didn't pan out.
