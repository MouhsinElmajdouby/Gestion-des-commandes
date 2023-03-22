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
  <form action="update-client.jsp" method="post">
    <%  
        int clientId = Integer.parseInt(request.getParameter("id"));
        ClientDao clientDao = new ClientDao();
        Client client = clientDao.rechercherById(clientId);
    %>
   <div class="form-group">
      <label for="firstName">firstName:</label>
      <input type="text" class="form-control" value=<%= client.getFirstName() %> id="firstName" name="firstName">
    </div>
    <div class="form-group">
      <label for="lastName">lastName:</label>
      <input type="text" class="form-control" value=<%= client.getLastName() %> id="lastName" name="lastName">
    </div>
    
    <div class="form-group">
      <label for="Email">Email:</label>
      <input type="text" class="form-control" value=<%= client.getInformation().getEmail() %> id="Email" name="Email">
    </div>
    <div class="form-group">
      <label for="Adress">Adress:</label>
      <input type="text" class="form-control" value=<%= client.getInformation().getAdress() %> id="Adress" name="Adress">
    </div>
    <input type="hidden" name="id" value="<%= clientId %>">
     <input type="hidden" name="infoid" value="<%= client.getInformation().getId() %>">
    <button type="submit" class="btn btn-primary">Update Client</button>
  </form>
</body>
</html>
