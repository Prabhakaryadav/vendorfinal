<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Add Product
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js">
    </script>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        input[type="file"] {
    
         display:block;
        }
        .imageThumb {
         max-height: 75px;
         border: 2px solid;
         margin: 10px 10px 0 0;
         padding: 1px;
         }
        </style>
        <script type="text/javascript">
       $(document).ready(function() {
  if (window.File && window.FileList && window.FileReader) {
    $("#files").on("change", function(e) {
      var files = e.target.files,
        filesLength = files.length;
      for (var i = 0; i < filesLength; i++) {
        var f = files[i]
        var fileReader = new FileReader();
        fileReader.onload = (function(e) {
          var file = e.target;
          $("<span class=\"pip\">" +
            "<img class=\"imageThumb\" width=\"25%\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
            "<br/><span class=\"remove\">Remove image</span>" +
            "</span>").insertAfter("#files");
          $(".remove").click(function(){
            $(this).parent(".pip").remove();
          });
        
          
        });
        fileReader.readAsDataURL(f);
      }
    });
  } else {
    alert("Your browser doesn't support to File API")
  }
});
        </script>  

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
          <form class= "mx-2 my-auto w-full" method="GET">
            <a href="logout" class="btn btn-secondary  form-rounded" style="color:red"><b>Logout</b>
            
            </a>
          </form>
        </li>
      </ul>
    </nav>
    <div class="container-clearfix">
      <br>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 bg-light">
          <br>
          <nav class="navbar navbar-expand-md navbar-dark navbar-custom">
            <span class="navbar-text navbar-" style="color:blue">
              <b>PROFILE
              </b>
            </span>
           
          </nav>
          <br>
          <center>
            <b>NAME:<span style="color: #B23850"> ${pageContext.request.userPrincipal.name}</b></span> 
            <br>
            <br>
         
          </center>
        </div>
        <div class="col-md-6">
          <div class="container">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home" style="color: #41B3A3"><b>PRODUCTS</b></a>
                </a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" data-toggle="tab" href="#menu1" style="color:#E8A87C"><b>VENDORS</b></a>
                </a>
              </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div id="home" class="container tab-pane active">
                <br>
                <br>
                <br>
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-md-8 bg-light   ">
                         <picture>
                        <center>
                          <br>
                          <br>
                          <br>
                          <label for="files">
                            <img src="images/add.png"/>
                        </label>
                          <input type="file" id="files" name="files[]" multiple hidden />
                          <br>
                          <br>
                          <br>
                          <b>Add Images
                          </b>
                          <br>
                          <br>
                        </center>
                      </picture>
                    </div>
                    
                    <div class="col-md-4" >
                    <b style="color: green" >ADD PRODUCT</b>
                      <form class= "mx-2 my-auto w-full" action="saveProduct" method="post" modelAttribute="product">
                       
                    <select name="category">
                          <option name="category"  > Personal care</option>
                           <option name="category"  > Laptops</option>
                             <option name="category"  > Art Supplies</option>

                          

                        </select>
                        <br>
                        
                        <input type="text" name="name" placeholder="Name" required>
                        <br>
                        
                        <input type="text" name="Discription" placeholder="Description" required>
                        
                        <br>
                        <input type="number"  name="price" placeholder="Price " required>
                        
                                  
                      
                       
                                   </div>
                  </div>   
                </div>
              </div>
              <div id="menu1" class="container tab-pane fade">
                <br>
              </div>
            </div>
            <!--tab ends here-->
          </div>
        </div>
        <div class="col-md-3">
          <button class="btn btn-dark form-rounded" style="width:30%; position: absolute; bottom: 50px; right: 20px;" ><b style="color: green">Add</b>
          </button>
          <br>
          <a href="list" class="btn btn-secondary form-rounded" style="width:30%;  position: absolute; bottom: 0; right: 20px;"  type="reset"><b style="color: red">Back</b>
         
         </a>
        </form>
        </div>
      </div>
      
      </body>
    </html>