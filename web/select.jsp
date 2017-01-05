<%@ page import="com.mysql.jdbc.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: dcamo
  Date: 1/5/2017
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {

        Connection con;
        try {
            //Подключение JDBC коннектора для работы с MySQL
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        /*
        Создание подключения к хосту: 193.151.106.187
                             к базе: test
                             таблица: test
                             пароль test
         */
        con = (Connection) DriverManager.getConnection("jdbc:mysql://193.151.106.187:3306/test", "test", "test");

        /*
            Запрос для вывода всех данных из таблицы
         */
        PreparedStatement zx = (PreparedStatement) con.prepareStatement("SELECT * FROM test");

        // Выполнение запроса
        ResultSet rs = zx.executeQuery();

        //Извлечение данных из таблицы
        while (rs.next()) {
            String id_display = rs.getString("id");
            String name_display = rs.getString("name");
            String second_name_display = rs.getString("surname");
            String date_display = rs.getString("bdate");
            String tel_display = rs.getString("tel");
            String email_display = rs.getString("email");
            String country_display = rs.getString("country");
            String city_display = rs.getString("city");
            String district_display = rs.getString("disctrict");


            //Вывод ранее полученых данных на экран
        out.println(id_display + " Name: " + name_display + " Second Name: " + second_name_display + " Birthday: " + date_display + " Phone Number: " + tel_display + " Email: " + email_display+ " Country: " + country_display + " City: " + city_display + " District: " + district_display + "<hr>");

    }
    } catch (SQLException e) {
            e.printStackTrace();
        }
%>
</body>
</html>
