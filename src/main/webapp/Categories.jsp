<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Categories List</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">
</head>
<body>

<%@include file="header.jsp" %>
  <h1>Categories List</h1>
  <table id="categorie-table" class="table table-striped table-bordered table-hover">
    <thead>
      <tr>
        <th>ID</th>
        <th>Libelle</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <%
        CategorieDao categorieDao = new CategorieDao();
      	List<Categorie> categories = categorieDao.AfficherTout();
      	for(Categorie categorie : categories) {
      %>
        <tr>
          <td><%= categorie.getId() %></td>
          <td><%= categorie.getLibelle() %></td>
          <td ><button class="btn btn-success edit-product" onclick="editCategorie(<%= categorie.getId() %>)" data-categorie-id="<%= categorie.getId() %>">Edit</button></td>
          <td ><button class="btn btn-danger delete-product" onclick="deleteCategorie(<%= categorie.getId() %>)"  data-categorie-id="<%= categorie.getId() %>">Delete</button> </td>
        </tr>
      <% } %>
    </tbody>
  </table>
  
  <button class="btn btn-primary" onclick="createCategorie()">Add Categorie</button>
  
  <script type="text/javascript">
  function createCategorie() {
	  window.location.href = "create-categorie.jsp";
	}
  </script>
  
  
  <script>
  $(document).ready(function() {
    $('#categorie-table').DataTable({
      "language": {
        "url": "https://cdn.datatables.net/plug-ins/1.11.3/i18n/en.json"
      },

    });
  });
</script>

<script>
function deleteCategorie(id) {
  if (confirm("Are you sure you want to delete this categorie?")) {
    $.ajax({
      url: "deleteCategorie.jsp?id=" + id,
      method: "POST",
      success: function(response) {
        alert("Categorie deleted successfully");
        window.location.reload();
      },
      error: function(xhr, status, error) {
        alert("An error occurred while deleting the product");
      }
    });
  }
}
</script>


<script>
function editCategorie(id) {
	  window.location.href = "edit-categorie.jsp?id=" + id;
	}
</script>
</body>
</html>


