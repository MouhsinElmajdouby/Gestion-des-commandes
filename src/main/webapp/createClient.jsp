<%@page import="java.util.List"%>
<%@page import="model.Client"%>
<%@page import="model.Information"%>
<%@page import="dao.InformationDao"%>
<%@page import="dao.ClientDao"%>
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
ClientDao clientDao = new ClientDao();
if (request.getMethod().equalsIgnoreCase("post")) {
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String Email = request.getParameter("Email");
String Adress = request.getParameter("Adress");
Client client = new Client();
InformationDao informationDao = new InformationDao();
Information information = new Information();
information.setAdress(Adress);
information.setEmail(Email);
informationDao.AjouterInformation(information);
//information.setId(26);
client.setFirstName(firstName);
client.setLastName(lastName);
//System.out.println(i.getId());
client.setInformation(information);
clientDao.AjouterClient(client);
response.sendRedirect("Clients.jsp");
}
%>
</body>
</html>