
<%@ page language="java" import="java.sql.*" %>


<% 

    Connection con;

   PreparedStatement ps;

   String name=request.getParameter("name");

 
  String gender=request.getParameter("gender");

  
 String address=request.getParameter("address");

 
  String city=request.getParameter("city");

 
  String mno=request.getParameter("mno");

 
  String emailid=request.getParameter("emailid");

  
 String username=request.getParameter("username");

  

 String password=request.getParameter("password");
 
 String cpassword=request.getParameter("cpassword");
 
  
   Class.forName("com.mysql.jdbc.Driver");  

con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/(database name)","root","(your password)"); 
 
    ps=con.prepareStatement("insert into (name of the table) (name,password,phone,age,email) value(?,?,?,?,?,?,?,?,?)");
 

    ps.setString(1,name);
 
   ps.setString(2,gender);

 
  ps.setString(3,address);

 
  ps.setString(4,city);

  
 ps.setString(5,(mno));

  
 ps.setString(6,emailid);

  
 ps.setString(7,username);

  
 ps.setString(8,password);
 
 ps.setString(9, cpassword);
 
 
  ps.execute();
  
 out.println("<b>user registered");  


   %>
  
 <br>
 
  <a href="Login.html">Login</a>

</body>

</html>

