<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
         
         <script type="text/javascript">

</script>
</head>
<body>
        <nav class="navbar navbar-expand-md navbar-light bg-light" >
              <h1 style="color:red;"><b>GRIZZLY STORE</b></h1>
                                 
                    <form class="mx-2 my-auto d-inline w-20">
                   
                    </form>

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
                                <a href="logout" class="btn btn-secondary  form-rounded" style="color:red"><b>Logout</b>
           
            </a>
                            </form>
                        </li>
                    </ul>
                        
            </nav>

<div class="container-fluid" style="background-color: #D2FDFF">
<br>
    <div class="row" >
            <div class="col-md-3 bg-light" >
                <nav class="navbar navbar-expand-md navbar-dark bg-secondary" >
                    <span class="navbar-text navbar-" style="color:blue"><b>PROFILE</b></span>
                    <ul class="navbar-nav ml-auto">
                       
                    </ul>
                </nav>

<br><center>
    
     <i class="fas fa-user-circle"></i>
    <br>
    
   <b>NAME:<span style="color: #B23850"> ${pageContext.request.userPrincipal.name}</b></span> 
<br><br>

</center>

  </div>

                <div class="col-md-9 bg-light" >
            
                    <div class="btn-group col-md-12" style="background-color:#EAE7DC">
                        <div class="container">
                            
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                              <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#home" style="color: #41B3A3"><b>PRODUCTS</b></a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#menu1" style="color:#E8A87C"><b>INVENTORY</b></a>
                              </li>
                            
                            </ul>
                          
                            <!-- Tab panes -->
                            <div class="tab-content">
                              <div id="home" class="container tab-pane active"><br>
        
                        <div class="col-md-12 bg-light">
                                <form class="mx-2 my-auto d-inline w-20" action="ShowProductByCategoryServlet" method="POST">
                                        <div class="input-group">
                             

                                                  &emsp;&emsp;
                                                      <select name="select-city" onchange="location = this.value;" style="color:#379683">
<option value="">Select-Sorting Type</option>
 <option value="lowtohigh">Low To High</option>
 <option value="hightolow">High To Low</option>
</select>  &emsp;&emsp;&emsp;&emsp;&emsp;
</form>
		<form class= "mx-2 my-auto w-full" action="addproduct" method="POST">
												<input id="prodId" name="userId" type="hidden" value=${user.userId}>   
                                                       <a href="addproduct" class="btn btn-dark form-rounded" style="color: #FBEEC1"><b>Add Product</b></a>
					</form>
<form >
                        </div>
    
                                     <br>     <br>                
                                     <table border="1" class="table table-bordered">
                                            <tr>
                                                <td>
                                                    <center><span style="color: #59253A"><b>Category</b></span>
                                                </td>
                                                <td>
                                                        <center> <span style="color:#59253A"><b>Name</b></span>
                                                    </td>
                                                    <td>
                                                            <center><span style="color: #59253A"><b>Description</b></span>
                                                        </td>
                                                        <td>
                                                                <center><span style="color:#59253A"><b>Price</b></span>
                                                            </td>
                                                          
                                            </tr>
						<c:forEach  var="product"  items= "${products}" >
                        <tr style="color:#AC3B61">
                          <td>
                            <div class="checkbox checkbox-info checkbox-circle" >
                              <input id="checkbox11" type="checkbox" checked="">
                              <label for="checkbox11">
                                ${product.category}
                              </label>
                            </div>    
                          </td>
                          <td>
                            ${product.name}
                          </td>
                     
                          <td>
                            ${product.discription}
                          </td>
                          <td>
                            <span style="color:#AC3B61">${product.price}
                            </span>
                          </td>
                      
                          <td>
                            <center>
                              <a href="view?id=${product.id}" class="btn btn-secondary form-rounded"  width="50px" style="color: #14A76C"> &emsp;<b>View</b>&emsp; 
                              </a>&emsp;&emsp;
							
                              <a  href="delete?id=${product.id }" class="btn btn-secondary form-rounded" style="color: #DA7B93">&nbsp;<b>Remove</b>&nbsp; 
                              </a>
                            
                            </center>
                          </td>
                        </tr>
                       </c:forEach>                                

                                        </table>

                        </div>
                        
               
                              </div>
                              <div id="menu1" class="container tab-pane fade"><br>
                             
                                     <!-- Tab panes -->
                            <div class="tab-content">
                              <div id="home" class="container tab-pane active"><br>
        
                        <div class="col-md-12 bg-light">
                                <form class="mx-2 my-auto d-inline w-20" action="ShowProductByCategoryServlet" method="POST">
                                        <div class="input-group">
                             

                     

<form >
                        </div>
    
                                     <br>     <br>                
                                     <table border="1" class="table table-bordered">
                                            <tr>
                                                <td>
                                                    <center><span style="color: #59253A"><b>Category</b></span>
                                                </td>
                                                <td>
                                                        <center> <span style="color:#59253A"><b>Name</b></span>
                                                    </td>
                                                    <td>
                                                            <center><span style="color: #59253A"><b>Description</b></span>
                                                        </td>
                                                        <td>
                                                                <center><span style="color:#59253A"><b>Price</b></span>
                                                            </td>
                                                            <td>
                                                                    <center><span style="color:#59253A"><b>Stock</b></span> 
                                                                </td>
                                                                  <td>
                                                                <center><span style="color:#59253A"><b>requirement</b></span>
                                                            </td>
                                                               <td>
                                                                <center><span style="color:#59253A"><b>rating</b></span>
                                                            </td>
                                            </tr>
						<c:forEach  var="product"  items= "${products}" >
                        <tr style="color:#AC3B61">
                          <td>
                            <div class="checkbox checkbox-info checkbox-circle" >
                        
                                ${product.category}
                              </label>
                            </div>    
                          </td>
                          <td>
                            ${product.name}
                          </td>
                     
                          <td>
                            ${product.discription}
                          </td>
                          <td>
                            <span style="color:#AC3B61">${product.price}
                            </span>
                          </td>
                           <td>
                            <span style="color:#AC3B61">${product.stock}
                            </span>
                          </td>
                           <td>
                            <span style="color:#AC3B61">${product.req}
                            </span>
                          </td>
                           <td>
                            <span style="color:#AC3B61">${product.rating}
                            </span>
                          </td>
                          <td>
                            <center>
                              <a href="#" class="btn btn-secondary form-rounded"  width="50px" style="color: #14A76C"> &emsp;<b>Manage</b>&emsp; 
                              </a>&emsp;&emsp;
							
                            
                            </center>
                          </td>
                        </tr>
                       </c:forEach>                                

                                        </table>

                        </div>
                        
               
                              </div>
                              </div>
                            </div>
                          </div>
                    </div>
                    <br>
    </div>    

           
</body>
</html>