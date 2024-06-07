<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enregistrement d'un utilisateur</title>
</head>
<body>
    <h1>Enregistrement d'un utilisateur</h1>
    <form action="${pageContext.request.contextPath}/utilisateurs/register" method="post">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" required><br><br>
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" required><br><br>
        <label for="email">password :</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Enregistrer">
    </form>
</body>
</html>
