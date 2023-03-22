<%@page import="model.Produit"%>
<%@page import="dao.ProduitDao"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  ProduitDao productDao = new ProduitDao();
  Produit produit = productDao.rechercherById(id);
  productDao.SupprimerProduit(produit);
%>