<%-- 
    Document   : index
    Created on : Aug 20, 2023, 9:02:02 PM
    Author     : matimoris
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/513bd683e0.js" crossorigin="anonymous"></script>

        <title>Listado de Autos</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col" colspan="4" class="text-center"> Autos</th>
                    <th scope="col">
                        <a href="crear.jsp"><i class="fa-solid fa-car-on"></i></a> 
                    </th>
                </tr>
                <tr>      
                    <th scope="col">ID</th>
                    <th scope="col">Auto</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Descripcion</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysqlo://localhost:3306/bd_autos?username=root&password=1234matias");
                    st = con.createStatement();
                    rs = st.executeQuery ("SELECT * FROM tbl_autos");
                    while (rs.next()) {
                %>
                <tr>
                    <th scope="row"><% rs.getInt("id_auto") %></th>
                    <td><% rs.getString("modelo_auto") %></td>
                    <td><% rs.getInt("precio_auto") %></td>
                    <td><% rs.getString("tipo_auto") %></td>
                    <td><% rs.getString("descripcion") %></td>
                    <td>
                        <a href="crear.jsp?id_autos=<%= rs.getString (1)%><i class="fa-solid fa-car-side"></i></a>
                        <a href="editar.jsp?id_autos=<%= rs.getString (1)%>&email<%= rs.getString (2) %>&password>"><i class="fa-solid fa-car-side"></i></a> 
                    </td>
                </tr>
                <%  {
                %>

            </tbody>
        </table>

    </body>
</html>
