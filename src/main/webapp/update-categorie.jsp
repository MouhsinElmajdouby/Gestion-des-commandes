<%@page import="dao.*, model.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Update Product</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>
  <h1>Update Product</h1>
  <%-- Get the product details from the form data --%>
  <%  
    int categorieId = Integer.parseInt(request.getParameter("id"));
    String libelle = request.getParameter("libelle");

  %>
  <%-- Update the product in the database --%>
  <%  
   CategorieDao categorieDao = new CategorieDao();
  Categorie categorie = new Categorie();
  categorie.setId(categorieId);
  categorie.setLibelle(libelle);
  categorieDao.ModifierCategorie(categorie);
  %>
  <p>Product updated successfully!</p>
  <a href="Categories.jsp" class="btn btn-primary">Back to Categories List</a>
</body>
</html>
