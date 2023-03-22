<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Create Categorie</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

  <h1>Create Categorie</h1>
  <form action="createcategorie.jsp" method="post">
    <div class="form-group">
      <label for="libelle">Libelle:</label>
      <input type="text" class="form-control" id="libelle" name="libelle">
    </div>
    
    <button type="submit" class="btn btn-primary">Create</button>
  </form>
</body>
</html>