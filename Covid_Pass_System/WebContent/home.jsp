<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<jsp:include page="header.jsp"/>

    <title>Welcome!!</title>
    <style type="text/css">

        .navbar-collapse{
           background-color: #333;
			overflow: hidden;
        }
		.nav_item{
					
		}
		
			body{
			  background-image: url("G:\Mubin\CPS\WebContent\img\image8.jpg");
			  
			  margin :0;
			  min-height: 100vh;
			 
			}
			
			.carousel-indicators{
				 width:100%;
			}
			
    </style>
</head>

<body>
    <br>
    

  <script type="text/javascript" src="script/ajax.js"></script>
<div class="container">
	<h2></h2>	
	<!--Slider  -->
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
				<div class="item active">
				  <img src="G:\Mubin\Covid_Pass_System\covid_img\image1.jpg" alt="">
				</div>

				<div class="item">
				  <img src="G:\Mubin\Covid_Pass_System\covid_img\image2.jpg" alt="">
				</div>
				
				
				<div class="item">
				  <img src="G:\Mubin\Covid_Pass_System\covid_img\image3.jpg" alt="">
				</div>

		
  
  
   <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			  </a>
			</div>
  
</div>
<br>
</body>

<jsp:include page="footer.jsp"/>

</html>


