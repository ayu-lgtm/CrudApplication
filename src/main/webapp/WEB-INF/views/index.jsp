<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="./base.jsp" %>
</head>
<body>
	<div class ="container card my-5 mt-3 col-md-10 offset-md-1">
	    <div class="card-header text-center">
		    <h5>Crud Application</h5>
		  </div>
		  <br>
		  <table class="table">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">Id</th>
			      <th scope="col">Product Name</th>
			      <th scope="col">Product Description</th>
			      <th scope="col">Price</th>
			      <th scope="col">Action</th>
			      <th ></th>
			    </tr>
			  </thead>
			  <tbody>
			    <c:forEach items="${pList }" var="p">
			    <tr>
			      <th scope="row">${p.id}</th>
			      <td>${p.title }</td>
			      <td>${p.discription }</td>
			      <td class="font-weight-bold">${p.price }</td>
			      <td>
				      <a href="delete/${p.id}"><i class="fa fa-trash text-danger" style="font-size:25px" aria-hidden="true"></i></a>&nbsp;&nbsp;<a href="update/${p.id}"><i class="fa fa-edit" style="font-size:25px;color:primary"></i></a>
			      </td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
	     <div class="card-footer text-center">
		  
		    <!-- Use this href text for finding project path -->
		    <!-- directly you can not access back page you have to use this -->
		    
		    <a href="addProduct" class="btn btn-outline-info">Add Product</a>
		  </div>
		 
	</div>
</body>
</html>