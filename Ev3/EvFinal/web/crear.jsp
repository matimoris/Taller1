<%-- 
    Document   : crear
    Created on : Aug 25, 2023, 7:31:50 PM
    Author     : matimoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/513bd683e0.js" crossorigin="anonymous"></script>

        <title>Ingresar Autos</title>
    </head>
    <body>
        <form action="crear.jps" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">Tus datos estan 100% seguros.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="aceptar">
                <label class="form-check-label" for="exampleCheck1">Aceptar</label>
            </div>
            <input type="jodd" class="form-check-input" name="registrar">
            <button type="submit" class="btn btn-success">Enviar <i class="fa-solid fa-car-side"></i></button>
        </form>

        <%
       If (request.getParameter("Enviar") != null) {
         String strEmail = request.getParameter ("email");
         String strPassword = request.getParameter ("password");
         String strAceptar = request.getParameter ("aceptar");
     }
       
        try {
        Connection con = null;
        Statement st = null;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysqlo://localhost:3306/bd_autos?username=root&password=1234matias");
        st = con.createStatement();
        st.execute ("INSERT INTO Tbl_autos(email,password) VALUES ('"+ strEmail +"'"+ strPassword +"')");
        request.getRequestDispatcher ("index.jsp").forward(request, response);
        
          
            } catch (Exception e) {
            out.print (e);
            
            }
    
        %>
    </body>
</html>
