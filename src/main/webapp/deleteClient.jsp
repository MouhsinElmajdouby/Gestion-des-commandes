<%@page import="model.Client"%>
<%@page import="dao.ClientDao"%>
<%@page import="model.Produit"%>
<%@page import="dao.ProduitDao"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
 ClientDao clientDao = new ClientDao();
 Client client = clientDao.rechercherById(id);
  clientDao.SupprimerClient(client);
%>