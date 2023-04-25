<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	 <div class ="container card my-5 mt-3 col-md-6 offset-md-3">
	    <div class="card-header text-center">
		    <h5>Change The Product Details</h5>
		  </div>
		  <br>
		  <br>
		<form action="${pageContext.request.contextPath }/handleProduct" method="post">
		  <div></div>
		  <div class="form-group">
		    <input type="hidden" name ="id" class="form-control" id="exampleFormControlInput1" value="${product.id }" readonly>
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Product Name</label>
		    <input type="text" name ="title" class="form-control" id="exampleFormControlInput1" placeholder="Enter the product name here.." value="${product.title }" required>
		  </div>
		 
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">Product Description</label>
		    <pre><textarea class="form-control" name="discription" id="exampleFormControlTextarea1" rows="6" placeholder="Enter the product description.." >${product.discription }</textarea></pre>
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Product Price</label>
		    <input type="text" class="form-control" id="exampleFormControlInput1" name="price" placeholder="Enter Product price.." value="${product.price }" required>
		  </div>
		  
		  <div class="card-footer text-center">
		  
		    <!-- Use this href text for finding project path -->
		    <!-- directly you can not access back page you have to use this -->
		    
		    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-info">Back</a>
            <button type="submit" class="btn btn-warning">Update</button>
		  </div>
		  
		  
		</form>
	</div>
</body>
</html>