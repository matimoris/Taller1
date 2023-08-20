<%-- 
    Document   : index
    Created on : Aug 20, 2023, 6:45:07 PM
    Author     : matimoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de Interés Simple</title>
</head>
<body>
    <h1>Calculadora de Interés Simple</h1>
    <form action="CalculateInterestServlet" method="post">
        Capital: <input type="text" name="capital"><br>
        Tasa de Interés Anual (%): <input type="text" name="rate"><br>
        Años: <input type="text" name="years"><br>
        <input type="submit" value="Calcular">
    </form>
</body>
</html>