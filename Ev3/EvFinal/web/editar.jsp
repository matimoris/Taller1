<%-- 
    Document   : editar
    Created on : Aug 25, 2023, 8:10:16 PM
    Author     : matimoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/513bd683e0.js" crossorigin="anonymous"></script>

        <title>Actualizar Autos</title>
    </head>
    <body>
        <%
         String strID = request.getParameter ("id_autos");
         String strEmail = request.getParameter ("email");
         String strPassword = request.getParameter ("password");
         String strAceptar = request.getParameter ("aceptar");
   
        %>
        <form action="editar.jps" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="<%=strEmail%>" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">Tus datos estan 100% seguros.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" name="password"value="<%=strPassword%> placeholder="Password">
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="aceptar">
                <label class="form-check-label" for="exampleCheck1">Aceptar</label>
            </div>
            <input type="jodd" class="form-check-input" name="registrar">
            <button type="submit" class="btn btn-success">Actualizar <i class="fa-solid fa-car-side"></i></button>
            <a href="index.jsp" class="btn btn-danger">Cancelar <i class="fa-solid fa-ban"></i></a>
            <input type="hidden" name="id_autos" value="<%=strID%>">
        </form>

        <%
        
         If (request.getParameter("enviar") != null) {
      
        try {
        Connection con = null;
        Statement st = null;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysqlo://localhost:3306/bd_autos?username=root&password=1234matias");
        st = con.createStatement();
        st.executeUpdate ("UPDATE Tbl_autos SET email = '"+ strEmail +"',password= '"+ strPassword +"' WHERE id_autos='"+ strID +"'");
        request.getRequestDispatcher ("index.jsp").forward(request, response);
        
          
            } catch (Exception e) {
            out.print (e);
            
            }
                }

        %>

    </body>
</html>
