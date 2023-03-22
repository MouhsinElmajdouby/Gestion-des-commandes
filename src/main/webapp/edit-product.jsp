<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Edit Product</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>
  <h1>Edit Product</h1>
  <form action="update-product.jsp" method="post">
    <%  
        int productId = Integer.parseInt(request.getParameter("id"));
        ProduitDao productDao = new ProduitDao();
        Produit product = productDao.rechercherById(productId);
    %>
    <div class="form-group">
      <label for="libelle">Libelle:</label>
      <input type="text" class="form-control" id="libelle" name="libelle" value="<%= product.getLibelle() %>">
    </div>
    <div class="form-group">
      <label for="prix">Prix:</label>
      <input type="number" class="form-control" id="prix" name="prix" value="<%= product.getPrix() %>">
    </div>
    <div class="form-group">
      <label for="categorie">Categorie:</label>
      <select class="form-control" id="categorie" name="categorie">
        <%  
            CategorieDao categorieDao = new CategorieDao();
            List<Categorie> categories = categorieDao.AfficherTout();
            for (Categorie categorie : categories) {
                if(categorie.getId() == product.getCategorieId()) {
                    out.println("<option value='" + categorie.getId() + "' selected>" + categorie.getLibelle() + "</option>");
                } else {
                    out.println("<option value='" + categorie.getId() + "'>" + categorie.getLibelle() + "</option>");
                }
            }
        %>
      </select>
    </div>
    <input type="hidden" name="id" value="<%= productId %>">
    <button type="submit" class="btn btn-primary">Update Product</button>
  </form>
</body>
</html>
