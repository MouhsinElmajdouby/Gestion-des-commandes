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
<%@include file="header.jsp" %>
	<%
ProduitDao productDao = new ProduitDao();
if (request.getMethod().equalsIgnoreCase("post")) {
String libelle = request.getParameter("libelle");
double prix = Double.parseDouble(request.getParameter("prix"));
int categorieId = Integer.parseInt(request.getParameter("categorie"));
Produit newProduct = new Produit();
newProduct.setPrix(prix);
newProduct.setLibelle(libelle);
newProduct.setCategorieId(categorieId);
productDao.AjouterProduit(newProduct);
response.sendRedirect("Produits.jsp");
}
%>
</body>
</html>