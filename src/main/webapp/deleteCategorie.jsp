<%@page import="model.Categorie"%>
<%@page import="dao.CategorieDao"%>
<%@page import="model.Produit"%>
<%@page import="dao.ProduitDao"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  CategorieDao categorieDao = new CategorieDao();
  Categorie categorie = categorieDao.rechercherById(id);
  categorieDao.SupprimerCategorie(categorie);
%>