<%@page import="dao.*, model.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp" %>
  <title>Update Client</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
  <h1>Update Client</h1>
  <%-- Get the product details from the form data --%>
  <%  
  int ClientId = Integer.parseInt(request.getParameter("id"));
  int InfoId = Integer.parseInt(request.getParameter("infoid"));
  String firstName = request.getParameter("firstName");
  String lastName = request.getParameter("lastName");
  String Email = request.getParameter("Email");
  String Adress = request.getParameter("Adress");
  %>
  <%-- Update the product in the database --%>
  <%  
  ClientDao clientDao = new ClientDao();
  InformationDao informationDao = new InformationDao();
  Client client = new Client();
  Information info = new Information();
  info.setEmail(Email);
  info.setAdress(Adress);
  info.setId(InfoId);
  informationDao.ModifierInformation(info);
  client.setId(ClientId);
  client.setFirstName(firstName);
  client.setLastName(lastName);
  client.setInformation(info);
  clientDao.ModifierClient(client);
  %>
  <p>Client updated successfully!</p>
  <a href="Clients.jsp" class="btn btn-primary">Back to Client List</a>
</body>
</html>
