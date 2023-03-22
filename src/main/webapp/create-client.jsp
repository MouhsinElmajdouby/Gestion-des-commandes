<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Create Product</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

  <h1>Create Client</h1>
  <form action="createClient.jsp" method="post">
    <div class="form-group">
      <label for="firstName">firstName:</label>
      <input type="text" class="form-control" id="firstName" name="firstName">
    </div>
    <div class="form-group">
      <label for="lastName">lastName:</label>
      <input type="text" class="form-control" id="lastName" name="lastName">
    </div>
    
    <div class="form-group">
      <label for="Email">Email:</label>
      <input type="text" class="form-control" id="Email" name="Email">
    </div>
    <div class="form-group">
      <label for="Adress">Adress:</label>
      <input type="text" class="form-control" id="Adress" name="Adress">
    </div>
    
    <button type="submit" class="btn btn-primary">Create</button>
  </form>
</body>
</html>