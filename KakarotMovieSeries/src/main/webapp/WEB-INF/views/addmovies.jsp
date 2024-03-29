<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
		    $('#loader').hide();
		    $("#submit").on("click", function() {
		    	$("#submit").prop("disabled", true);
		    	var name = $("#name").val();
		        var file = $("#image").val(); 
		        var price = $("#price").val();
		        var description = $("#description").val();
		        var form = $("#form").serialize();
		    	var data = new FormData($("#form")[0]);
		    	data.append('name', name);
		    	data.append('price', price);
		    	data.append('description', description); 
		    	//alert(data);
		        $('#loader').show();
		        if (name === "" || file === "" || price === "" || description === "") {
		        	$("#submit").prop("disabled", false);
		            $('#loader').hide();
		            $("#name").css("border-color", "red");
		            $("#image").css("border-color", "red");
		            $("#price").css("border-color", "red");
		            $("#description").css("border-color", "red");
		            $("#error_name").html("Please fill the required field.");
		            $("#error_file").html("Please fill the required field.");
		            $("#error_price").html("Please fill the required field.");
		            $("#error_description").html("Please fill the required field.");
		        } else {
		            $("#name").css("border-color", "");
		            $("#image").css("border-color", "");
		            $("#price").css("border-color", "");
		            $("#description").css("border-color", "");
		            $('#error_name').css('opacity', 0);
		            $('#error_file').css('opacity', 0);
		            $('#error_price').css('opacity', 0);
		            $('#error_description').css('opacity', 0);
		                    $.ajax({
		                        type: 'POST',
		                        enctype: 'multipart/form-data',
		                        data: data,
		                        url: "/movies/saveImage", 
		                        processData: false,
		                        contentType: false,
		                        cache: false,
		                        success: function(data, statusText, xhr) {
		                        console.log(xhr.status);
		                        if(xhr.status == "200") {
		                        	$('#loader').hide(); 
		                        	$("#form")[0].reset();
		                        	$('#success').css('display','block');
		                            $("#error").text("");
		                            $("#success").html("Product Inserted Succsessfully.");
		                            $('#success').delay(2000).fadeOut('slow');
		                         }	   
		                        },
		                        error: function(e) {
		                        	$('#loader').hide();
		                        	$('#error').css('display','block');
		                            $("#error").html("Oops! something went wrong.");
		                            $('#error').delay(5000).fadeOut('slow');
		                            location.reload();
		                        }
		                    });
		        }
		            });
		        });

	</script>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>
	<h1 class="text-center">Spring Boot Image Gallery Application</h1><br><br>
	<!-- <form action="/movies/saveImage" method="post" enctype="multipart/form-data">
			<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Product Name" id="name" name="name" required="required">
							<p id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Description</label>
							<textarea class="form-control" placeholder="Product Description" id="description" rows="3" cols="45" name="description" required="required"></textarea>
							<p id="error_description"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Image</label>
							<input type="file" class="form-control" placeholder="" name="image" id="image" required="required">
							<p id="error_file"></p>
						</div>
					</div>
					
						<div class="right-w3l col-md-6">
							<input type="submit" id="submit" class="btn btn-primary form-control" value="Submit">
							<br><br>
						</div>
						<a href="/image/show" style="float:left;" class="btn btn-success text-right">Show All</a>
				</div>
				<br>
				<div id="success" class="text-center" style="color:green;"></div>
				<div id="error" class="text-center" style="color:red;"></div>
	</form> -->
<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<!-- form -->
		<form id="form">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Product Name" id="name" name="name" required="required">
							<p id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Description</label>
							<textarea class="form-control" placeholder="Product Description" id="description" rows="3" cols="45" name="description" required="required"></textarea>
							<p id="error_description"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Image</label>
							<input type="file" class="form-control" placeholder="" name="image" id="image" required="required">
							<p id="error_file"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Price</label>
							<input type="text" class="form-control" placeholder="Price" name="price" id="price" required="required">
							<p id="error_price"></p>
						</div>
					</div>
					
						<div class="right-w3l col-md-6">
							<input type="button" id="submit" class="btn btn-primary form-control" value="Submit">
							<br><br>
						</div>
						<a href="/image/show" style="float:left;" class="btn btn-success text-right">Show All</a>
				</div>
				<br>
				<div id="success" class="text-center" style="color:green;"></div>
				<div id="error" class="text-center" style="color:red;"></div>
			</form>
		</div>
	</div>

</body>
</html>