
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Propmitra | Home</title>
        <link href="images/Home.png" type="img/Home-512.png" rel="icon">
        <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
        <style>
        .box{
	        background: white;
	        border: 1px solid #dad0d0;
	        border-radius: 3px;
	        padding: 5px 4px 7px 4px;
	        }
	     .box:hover{
	        background: white;
		    border: 1px solid #18aedf;
		    border-radius: 3px;
		    padding: 5px 4px 7px 4px;
		    box-shadow: 0px 1px 10px #0f0f0fb8;
            }   
        .box1 p{
	        font-size: 22px;
	        padding: 0 0;
	        color: #3c653e;
	        margin-top: 10px;
	        font-family: sans-serif;
            font-weight: 500;
	        }
	     .bo{
	        font-size: 15px;
            color: #18aedf;
            font-family: sans-serif;;
            font-weight: 500;
            } 
         .bo1{
	        font-size: 14px;
            color: #66696b;;
            font-family: sans-serif;
            font-weight: 500;
            }    
	      .box3{
	        text-align: center;
            margin: 7px 0;
            font-size: 17px;
           font-family: sans-serif;
	      } 
	     .box4{
	       padding :0 8px;
	      }   
	     .box2{
	     line-height:22px;
	     } 
	     .bo2{
	       width: 20px;
           height: 20px;
           border: 1px solid #18aedf;
        }
        .form-control {
		    display: block;
		    width: 100%;
		    height: 34px;
		    padding: 6px 6px;
		    font-size: 13px;
		    line-height: 1.42857143;
		    color: #555;
		    background-color: #fff;
		    background-image: none;
		    border: 1px solid #18aedf;
		    border-radius: 4px;
		    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
		    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
         }
		    .bo3 i{
            font-size:24px;
		    color: #18aedf;
		    margin: 6px 7px;
		    }
		     .bo3 span{
            font-size:17px;
		    color: #18aedf;
		    margin: 6px 7px;
		    }
		     .bo3 a{
		    float: right;
		    margin: 6px 7px;
		    }
		    .content {
              padding:3px;
              }
            
			.productbox img {
			    -webkit-transform: scale(0.9);
			    transform: scale(0.9);
			    -webkit-transition: .3s ease-in-out;
			    width: 100%;
			}
			.productbox:hover img {
			    -webkit-transform: scale(1);
			    transform: scale(1);
			}
			.content {
              padding: 2px !important;
            }
            .bo8{
                position: absolute;
			    margin: -16% 11px;
			    background: #26bd2c;
			    width: 22px;
			    height: 22px;
			    border: 1px solid #03A9F4;
			    border-radius: 41px;
			    color: #fff;
			    padding: 0px 0px 0px 6px;
			    font-size: 15px;
			    }
			   .box8 p{
			        font-size: 19px;
				    padding: 0 0;
				    color: #18aedf;
				    margin-top: 3px;
				    font-family: inherit;
				    font-weight: 500;
				    }
			
              
               #bo0{
                position: absolute;
			    left: 39%;
			    z-index: -1111;
			    }
             
		   .boc h5{
		       font-size: 24px;
			   color: #18aedf;
			   text-decoration: underline;
			   padding:0 0px;
				    }
		     .boe{
		     padding:0 0px;
		     }  
		       
		       label {
				    display: inline-block;
				    max-width: 100%;
				    margin-bottom: 5px;
				    font-weight: 500;
				    font-size: 15px;
				    color: #18aedf;
				     }
         </style>
        <script>
     var counter = 1;
     var limit = 6;
     function addInput(divName){
    	  
     
          if (counter == limit)  {
               alert("You have reached the limit of adding " + counter + " inputs");
          }
          
          else {
        	  
        	  var newdiv = document.createElement('div');
        	  newdiv.innerHTML = '<div class="col-md-12" style="padding: 0 0; margin:3px -1.1%;"><div class="col-md-2"><select id="Product Category" class="form-control"><option>Product Category</option><option>Cement</option><option>Cement</option><option>Cement</option></select></div><div class="col-md-2"><select id="sub Category" class="form-control"><option>Sub Category</option><option>Cement</option><option>Cement</option></select></div><div class="col-md-2"><select id="brand" class="form-control"><option>Brand</option><option>Cement</option><option>Cement</option></select></div><div class="col-md-2"><select id="material type" class="form-control"><option>Material Type</option><option>Cement</option><option>Cement</option></select></div><div class="col-md-2"><select id="quantity type" class="form-control"><option>Quantity Type</option><option>Cement</option><option>Cement</option></select></div><div class="col-md-2"> <input type="submit" class="btn btn-primary btn-block" value="SUBMIT" style="line-height: 22px; border: #fff;background: #18aedf;"></div>';
              
              document.getElementById(divName).appendChild(newdiv);
              counter++;
          }
     }
          
     </script>
	    </head>
	    <body onscroll="myFunction()">
	     
	     <div class="se-pre-con"></div>
	     <div id="page-content" style="background: #fff;">  
	     <jsp:include page="./homeTop.jsp"></jsp:include>
	     <div class="slider-wrapper ">
         </div>
     <!--============================ new section ============================ -->  
           <div class="container">
            <div class="col-lg-12 boe">
            <div class="col-md-12 boc" style="padding: 0 0;">
            <h5>My Item List</h5>
            </div> 
                <form action="#" class="form-horizontal" role="form">
                <div class="col-md-12 boe" id="dynamicInput">
                
                <div class="col-md-2 boe">
            	<div class="form-group col-md-12">
		        <label>Product Category :</label>
		        <select id="Product Category" class="form-control">
		        <option>Product Category</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        </select>
		        </div>
                </div>
                
                <div class="col-md-2 boe">
            	<div class="form-group col-md-12">
		        <label>Sub Category :</label>
		        <select id="sub Category" class="form-control">
		        <option>Sub Category</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        </select>
		        </div>
                </div>
                
                <div class="col-md-2 boe">
            	<div class="form-group col-md-12">
		        <label>Brand :</label>
		        <select id="brand" class="form-control">
		        <option>Brand</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        </select>
		        </div>
                </div>
                
                <div class="col-md-2 boe">
            	<div class="form-group col-md-12">
		        <label>Material Type :</label>
		        <select id="material type" class="form-control">
		        <option>Material Type</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        </select>
		        </div>
                </div>
                
                <div class="col-md-2 boe">
            	<div class="form-group col-md-12">
		        <label>Quantity Type :</label>
		        <select id="quantity type" class="form-control">
		        <option>Quantity Type</option>
		        <option>Cement</option>
		        <option>Cement</option>
		        </select>
		        </div>
                </div>
                
	            <div class="form-group col-md-2 col-sm-6">
	            <label style="color:#fff;">Description :</label>
	            <button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-primary btn-block" style="line-height:18px;">Add Another</button>
	            </div>
            
                </div>
             
	        <!-- <div class="col-md-12"><p></p></div>
	        <div class="col-md-12 item1">    
	        <div class="form-group col-md-5 col-sm-6"></div>
	        <div class="form-group col-md-2 col-sm-6"> 
	        <input type="submit" class="btn btn-primary btn-block" value="SUBMIT" style="line-height: 22px; border: #fff;"></div>
	        <div class="form-group col-md-5 col-sm-6"></div>
	        </div> -->
		   </form>
		  
		  
		  
        </div>
        <div class="col-md-12 col-xs-12"><br><br><br></div>   
           
    <!--============================ end new section ============================ -->  
   
         </div>
         </div>
           
        <footer>
        <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        <!-- jQuery -->
        <script src="assets/js/jquery.min.js" type="text/javascript"></script>
        <!-- jquery ui js -->
        <script src="assets/js/jquery-ui.min.js" type="text/javascript"></script>
        <!-- bootstrap js -->
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- fraction slider js -->
        <script src="assets/js/jquery.fractionslider.js" type="text/javascript"></script>
        <!-- owl carousel js --> 
        <script src="assets/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <!-- counter -->
        <script src="assets/js/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="assets/js/waypoints.js" type="text/javascript"></script>
        <!-- filter portfolio -->
        <script src="assets/js/jquery.shuffle.min.js" type="text/javascript"></script>
        <script src="assets/js/portfolio.js" type="text/javascript"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <!-- range slider -->
        <script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
        <script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
        <!-- custom -->
        <script src="assets/js/custom.js" type="text/javascript"></script>
          	
	<script>
	function getUsedVcleBrand(str)
	{
	if (str=="")  
	{  
		document.getElementById("txtHint2").innerHTML="";  
		return;  
		}  
	if (window.XMLHttpRequest)  
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari  
		xmlhttp=new XMLHttpRequest();  
		}
	else  
	{
		// code for IE6, IE5  
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()  
	{  
		if (xmlhttp.readyState==4 && xmlhttp.status==200)    
		{    
			document.getElementById("txtHint2").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getUsedVecleBrand.jsp?vBrand="+str,true);   
	xmlhttp.send();    
	}
	</script>
 
    </body>
    </html>