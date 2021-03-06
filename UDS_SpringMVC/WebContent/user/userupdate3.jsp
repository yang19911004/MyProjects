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
          <form action="${url }" method="post" onsubmit="return checkform()">
            <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            
            
            <p>
              <label>First Name</label>
              <input class="text-input small-input" type="text" id="firstnameid" name="firstname" value="${bean.firstname }"  readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Last Name</label>
              <input class="text-input small-input" type="text" id="lastnameid" name="lastname"  value="${bean.lastname }" readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Gender</label>
              <input class="text-input small-input" type="text" id="genderid" name="gender"  value="${bean.gender }" readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Date of Birth</label>
              <input class="text-input small-input" type="text" id="DOBid" name="DOB"  value="${bean.DOB }" readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Email Address</label>
              <input class="text-input small-input" type="text" id="emailAddressid" name="emailAddress"  value="${bean.emailAddress }" readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Salary Rate</label>
              <input class="text-input small-input" type="text" id="salaryRateid" name="salaryRate"  value="${bean.salaryRate }" readonly="readonly"/>
              
            </p>
            
            <p>
              <label>Department</label>
               <input class="text-input small-input" type="text" id="salaryRateid" name="salaryRate"  value="${bean.department }" readonly="readonly"/>
           
              
            </p>
            
         
            
           
              
            
            <p>
           
              <input type="button" value="Back"  onclick="javascript:history.go(-1)" />
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
