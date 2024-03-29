<%@page import="com.javawebapp.utility.DataUtility"%>
<%@page import="com.javawebapp.beans.UserBeans"%>
<%@page import="com.javawebapp.utility.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserRegistration</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
 $( function() {
      $( "#datepicker" ).datepicker({
        dateFormat : 'mm/dd/yy',
        changeMonth: true,
        changeYear: true
      });
    } );
  </script>
</head>
<body>
<%@ include file="header.jsp"%>
  <main class="login-form">
  <div class="cotainer">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header">
            User Registration
            
          </div>
            <%=ServletUtility.getSuccessMessage(request)%>
            <%=ServletUtility.getErrorMessage(request)%>
            <jsp:useBean id="bean" class="com.javawebapp.beans.UserBeans" scope="request"></jsp:useBean>
            
          <div class="card-body">
            <form action="/javawebapp/RegistrationCTL" method="post">
              <input type="hidden" name="id" value="<%=DataUtility.getStringData(bean.getId())%>"> 
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">First Name<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter First Name"
                    name="firstName" value="<%=DataUtility.getStringData(bean.getFirstName()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Last Name<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"   class="form-control" placeholder="Enter Last Name"
                    name="lastName" value="<%=DataUtility.getStringData(bean.getLastName()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Login Id<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text" id="email_address"  class="form-control" placeholder="Enter Login Id"
                    name="login" value="<%=DataUtility.getStringData(bean.getLogin()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Password<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="password" id="email_address"  class="form-control" placeholder="Enter password"
                    name="password" value="<%=DataUtility.getStringData(bean.getPassword()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Date Of Birth<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text"  id="datepicker" class="form-control" placeholder="Enter Date Of Birth"
                    name="dob" value="<%=DataUtility.getDateString(bean.getDob()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              
              
              
              <div class="form-group row">
                <label for="email_address" 
                  class="col-md-4 col-form-label text-md-right">Mobile No.<font color="red"></font></label>
                <div class="col-md-6">
                  <input type="text" id="email_address"  class="form-control" placeholder="Enter Mobile No"
                    name="mobile" value="<%=DataUtility.getStringData(bean.getMobileNo()) %>" >
                    <font  color="red"></font>
                </div>
              </div>
              <div class="col-md-6 offset-md-4">
                <input type="submit" class="btn btn-primary" name="operation" value="Register">
                
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </main>
  <div style="margin-top: 120px">
    <%@ include file="footer.jsp"%>
  </div>
</body>
</html>