<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ms.model.Utilisateur" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ms.dao.UtilisateurDao" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
</head>
<body>
<%
        UtilisateurDao utilisateurDao = new UtilisateurDao();
        List<Utilisateur> utilisateurs = utilisateurDao.getAllData();
        for (Utilisateur u : utilisateurs) {
        %>
    <h1>${message}</h1>
    		<tr>
                <td><%= u.getId() %></td>
                <td><%= u.getNom() %></td>
                <td><%= u.getEmail() %></td>
            </tr>
     <%
            }
        %>
        </table>
    <p>Ceci est la page d'accueil.</p>
    <a href="/utilisateurs">Voir les utilisateurs</a>
</body>
</html>
