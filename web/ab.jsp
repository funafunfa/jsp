<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    try {

        Connection con;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String name = request.getParameter("name");
        String second_name = request.getParameter("second_name");
        String date = request.getParameter("date");
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        con = (Connection) DriverManager.getConnection("jdbc:mysql://193.151.106.187:3306/test", "test", "test");
        String query = "INSERT INTO test.test (id, name, surname, bdate, tel, email, country, city, disctrict) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
        ps.setString(1, null);
        ps.setString(2, name);
        ps.setString(3, second_name);
        ps.setDate(4, Date.valueOf(date));
        ps.setString(5, tel);
        ps.setString(6, email);
        ps.setString(7, country);
        ps.setString(8, city);
        ps.setString(9, district);
        ps.execute();
        //rp.executeUpdate("INSERT INTO test.test (id, name, surname, bdate, tel, email, country, city, disctrict) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?);");
        //ResultSet rp = ps.executeUpdate();



        PreparedStatement zx = (PreparedStatement) con.prepareStatement("SELECT * FROM test");
        ResultSet rs = zx.executeQuery();
            while (rs.next()) {
                String username = rs.getString("name");
                String password = rs.getString("city");
                out.println("Username " + username + " City " + password + "<hr>");
            }
    }catch (SQLException e ) {
        e.printStackTrace();
    }
%>
</body>
</html>