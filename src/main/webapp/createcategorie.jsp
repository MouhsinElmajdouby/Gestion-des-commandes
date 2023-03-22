<%@page import="model.Categorie"%>
<%@page import="dao.CategorieDao"%>
<%@page import="model.Produit"%>
<%@page import="dao.ProduitDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
CategorieDao categorieDao = new CategorieDao();
if (request.getMethod().equalsIgnoreCase("post")) {
String libelle = request.getParameter("libelle");
Categorie categorie = new Categorie();
categorie.setLibelle(libelle);
categorieDao.AjouterCategorie(categorie);
response.sendRedirect("Categories.jsp");
}
%>
</body>
</html>