<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>University Dormitory System</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
<script type="text/javascript" language="javascript">
function checkform(){
	
	if(document.getElementById("dormNumid").value==""){
		
		alert('Building Number cannot be empty!');
		return false;
	}
	if(document.getElementById("roomNumid").value==""){
		
		alert('Room Number cannot be empty!');
		return false;
	}
	if(document.getElementById("priceid").value==""){
		
		alert('Price cannot be empty!');
		return false;
	}
	
	var fileName = document.getElementById("uploadfileid").value;
	
	var fileType = (fileName.substring(fileName.lastIndexOf(".")+1,fileName.length)).toLowerCase();
	

	
	if(fileType!='jpg'&&fileType!='png'){
		alert('Please Upload either Jpg or png format!');
		return false;
	}
	
	return true;

}


</script>

</head>
<body>

<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
  
  
  <%@ include file="../left.jsp" %>
  
  
  <div id="main-content">
    
    <div class="clear"></div>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>${title }</h3>
        <ul class="content-box-tabs">
          
        </ul>
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        
        
        
      
        <div class="tab-content default-tab" id="tab1">
          <form action="${url }" method="post" onsubmit="return checkform()" enctype="multipart/form-data">
            <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
              <label>Room Type</label>
             
              <select name="b1">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              </select>
              Bedrooms
              <select name="b2">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              </select>
              Bathrooms
            </p>
            
            <p>
              <label>Building Number</label>
              <input class="text-input small-input" type="text"  name="dormNum" id="dormNumid" />
              
            </p>
            
            <p>
              <label>Room Number</label>
              <input class="text-input small-input" type="text"  name="roomNum" id="roomNumid" />
              
            </p>
            
            <p>
              <label>Monthly Price</label>
              <input class="text-input small-input" type="text"  name="price" id="priceid" />
              
            </p>
            
            <p>
              <label>Area</label>
              <input class="text-input small-input" type="text"  name="area" id="areaid" />
              
            </p>
            
            <p>
              <label>Total Number of Room</label>
              <input class="text-input small-input" type="text"  name="number_of_room" id="idroom" />
              
            </p>
            
            <p>
              <label>Picture</label>
              <input class="text-input small-input" type="file" name="uploadfile"  id="uploadfileid"/>
              
            </p>
            
         
            
           
              
            
            <p>
              <input class="button" type="submit" value="Submit" />
              
              &nbsp;&nbsp;&nbsp;
              
              <input type="button" value="Cancel"  onclick="javascript:history.go(-1)" />
            </p>
            </fieldset>
            <div class="clear"></div>
            <!-- End .clear -->
          </form>
        </div>
        <!-- End #tab2 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    
  
  </div>
  <!-- End #main-content -->
</div>


</body>

</html>
