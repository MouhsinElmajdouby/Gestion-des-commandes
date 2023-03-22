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
  <h1>Update Product</h1>
  <%-- Get the product details from the form data --%>
  <%  
    int productId = Integer.parseInt(request.getParameter("id"));
    String libelle = request.getParameter("libelle");
    double prix = Double.parseDouble(request.getParameter("prix"));
    int categorieId = Integer.parseInt(request.getParameter("categorie"));
  %>
  <%-- Update the product in the database --%>
  <%  
    ProduitDao productDao = new ProduitDao();
    Produit product = new Produit();
    product.setId(productId);
    product.setLibelle(libelle);
    product.setPrix(prix);
    product.setCategorieId(categorieId);
    productDao.ModifierProduit(product);
  %>
  <p>Product updated successfully!</p>
  <a href="Produits.jsp" class="btn btn-primary">Back to Product List</a>
</body>
</html>
