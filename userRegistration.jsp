<%@ page import="java.sql.*"%>
<%
        
    String userName = request.getParameter("userName");    
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    System.out.println("User name =" + userName);
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp",
            "root", "root123");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" 
    + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
    
    System.out.println("i=="+i);
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
               
    } else {
        response.sendRedirect("index.jsp");
    }
%>