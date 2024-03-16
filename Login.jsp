
<%@page language="java" import="java.sql.*"%>

<html>
 
   <body>
       
 <% 

   
 Connection con;

  
  PreparedStatement ps;
  
  ResultSet rs;
  
  
   String name=request.getParameter("name");


   String pass=request.getParameter("pass");

  
 

   Class.forName("com.mysql.jdbc.Driver"); 
 
 con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/projects","root","271024");
 

   ps=con.prepareStatement("select * from NewUser where username=? and password=?");
 
  
   ps.setString(1,name);


   ps.setString(2,pass);  
 
  
   rs=ps.executeQuery();

   
if(rs.next())
   
{
      
 response.sendRedirect("welcome.jsp");
 
  }
   
else
  
 {
    
   response.sendRedirect("error.html");
 
  }
 
  
   %>

    </body>
</html>


