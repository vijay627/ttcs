<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TTCS-Existing Customer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  <body>
	
	<form:form commandName="existingCustomerCommand" id = "existingCustomerForm" action="existingCustomer.spr" method="POST" >
		<div class="section" style="margin-top:10px; width: 80%;margin-left: 10%;margin-right: 10%;">
			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white; ">
   				<tr>
   					<td class="subhd" colspan="2"><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;">Existing Customer</div></td>
   				</tr>
   				<tr>   					
	 				<td class="lbl"  ><label for="refCustId">Existing Customer Id:</label></td> 
					<td> 
						 <spring:bind path="existingCustomerCommand.custId">
						  <input type="text" name="<c:out value="${status.expression}"/>"
							id="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
					     </spring:bind>
					</td>
					
   				</tr>
   				<tr>
					<td align="center">
						<input type="submit" class="btn"  id="btnExtCif" " value='Submit' style="margin-left: 100px;"/> &nbsp;&nbsp;
					</td>
				</tr>
   			</table>
		</div>
	</form:form>	
  </body>
</html>
