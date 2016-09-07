<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("uname");  
    System.out.println("userName===="+userName);
    String password = request.getParameter("password");
    System.out.println("password===="+password);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp",
            "root", "root123");
    System.out.println("select * from user where userName='" + userName + "' and password='" +password + "'");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where userName='" + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>