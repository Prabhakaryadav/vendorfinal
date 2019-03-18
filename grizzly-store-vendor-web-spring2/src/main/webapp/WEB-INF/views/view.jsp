<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head> <title>View Products</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
        <nav class="navbar navbar-expand-md navbar-light bg-light">
 <h1 style="color:red;"><b>GRIZZLY STORE</b></h1>
                                 
                   

               <ul class="navbar-nav ml-auto">
               
                   <li class="nav-item">
                       <span class="navbar-text">
                          <b style="color: blue"> Welcome</b>,<b>${pageContext.request.userPrincipal.name}</b>
                       
                       </span>
                   </li>
                   </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <form class="mx-2 my-auto w-full">
                                <button class="btn btn-secondary form-rounded" type="button" style="color: red">Logout</button>
                            </form>
                        </li>
                    </ul>
                        
            </nav>

<div class="container-fluid" >
    <div class="row">
            <div class="col-md-3 bg-light">
                <nav class="navbar navbar-expand-md navbar-dark bg-secondary">
                    <span class="navbar-text navbar-" style="color:blue">PROFILE</span>
                
                </nav>

<br><center>
  <br>
  <b>NAME:<span style="color: #B23850"> ${pageContext.request.userPrincipal.name}</b></span> 
<br><br>

</center>
  </div>

                <div class="col-md-6 bg-light">
            
                    <div class="btn-group col-md-12">
                        <div class="container">
                            
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                              <li class="nav-item">
                                 <a class="nav-link active" data-toggle="tab" href="#home" style="color: #41B3A3"><b>PRODUCTS</b></a>
                              </li>
                              <li class="nav-item">
                               <a class="nav-link" data-toggle="tab" href="#menu1" style="color:#E8A87C"><b>VENDORS</b></a>
                              </li>
                            
                            </ul>
                          
                            <!-- Tab panes -->
                            <div class="tab-content">
                              <div id="home" class="container tab-pane active"><br>
                                
                                        <div class="container-fluid">
                                    <div class="row">
        
                        <div class="col-md-8 bg-light">
                               <b style="color: red">${product.category}</b><b> : </b><b style="color:#2E151B">${product.name} </b>
                            
                                <br><br><br><br>
                                <div id="demo" class="carousel slide" data-ride="carousel">

                                    <!-- Indicators -->
                                    <ul class="carousel-indicators">
                                      <li data-target="#demo" data-slide-to="0" class="active"></li>
                                      <li data-target="#demo" data-slide-to="1"></li>
                                      <li data-target="#demo" data-slide-to="2"></li>
                                    </ul>
                                  
                                    <!-- The slideshow -->
                                    <div class="carousel-inner">
                                      <div class="carousel-item active">
                                        <img src="images/1.jpg"  width="50%">
                                      </div>
                                      <div class="carousel-item">
                                        <img src="images/logo.png" >
                                      </div>
                                      <div class="carousel-item">
                                        <img src="images/logo.png" >
                                      </div>
                                    </div>
                                  
                                    <!-- Left and right controls -->
                                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                      <span class="carousel-control-prev-icon"></span>
                                    </a>
                                    <a class="carousel-control-next" href="#demo" data-slide="next">
                                      <span class="carousel-control-next-icon"></span>
                                    </a>
                                  
                                  </div>
                            </div>
        
        
                        <div class="col-md-4 bg-light"> 
                                     <br>  <br> <br>          <br>                      
        <span style="color: blue"><b>${product.discription}</b></span><span class="fa fa-pencil-square" aria-hidden="true"></span>
       
                
        </textarea>

                        </div>
        
                        
                </div></div>
                              </div>
                              <div id="menu1" class="container tab-pane fade"><br>
                                <p>
                                    VENDOR SIDE
                                    </p>
                              </div>
                            </div>
                          </div>
                    </div>
                    <br>
    </div>    
<div class="col-md-3">
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          
         
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <a href="list" class="btn btn-dark form-rounded" style="color: green"><b>back</b></a>
    
    </div>
           
</body>
</html>