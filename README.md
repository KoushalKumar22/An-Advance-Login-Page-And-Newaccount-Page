Welcome To Repository for an An Advance Login Page And Newaccount page 

Changes u should make for the new account page to work

Create a table like given 
 
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| name      | varchar(100) | YES  |     | NULL    |       |
| gender    | varchar(10)  | YES  |     | NULL    |       |
| address   | varchar(255) | YES  |     | NULL    |       |
| city      | varchar(255) | YES  |     | NULL    |       |
| mno       | int(10)      | YES  | UNI | NULL    |       |
| emailid   | varchar(255) | YES  | UNI | NULL    |       |
| username  | varchar(20)  | YES  |     | NULL    |       |
| password  | varchar(15)  | YES  |     | NULL    |       |
| cpassword | varchar(15)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

open NewUser.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");          *type the name of your database and your password and remove the brackets

ps=con.prepareStatement("insert into (name of the table) (name,password,phone,age,email) value(?,?,?,?,?)");      *type the name of the table and remove the brackets

Changes u should make for login page to work

Open Login.jsp

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)");         *type the name of your database and your password and remove the brackets

ps=con.prepareStatement("select * from (name of the table) where name=? and password=?");                        *type the name of the table and remove the bracketes 

response.sendRedirect("Welcome.html");                                                                           *if login is succesfull write the location of the page you want to redirect to


Feel free to work around and do some changes
