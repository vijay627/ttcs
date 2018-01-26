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
    
    <title>TTCS-New Gen Savings</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="online banking">
	<meta http-equiv="description" content="New customer creation ">
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/view/calendar/scripts/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/view/calendar/scripts/interface.js"></script>
	
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/view/calendar/calendar.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/view/calendar/lang/calendar-en.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/view/calendar/calendar-setup.js"></script>
	<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/view/calendar/skins/assyst/theme.css" title="assyst" />
	<link rel="alternate stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/view/calendar/skins/calendar-brown.css" title="summer" />
	
	<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/TtcsDwrUtilities.js'></script>
	
	<jsp:include page="ttcsScripts.jsp"/>
	
	<script type="text/javascript" for="window"  language="JavaScript">
		
	function fnOnload()
	{	
		 Calendar.setup(
		    {
		      inputField	: "openingDate",         // ID of the input field for calendar
		      button     	: "openingDate_image"       // ID of the button/image which is used to open the calendar by clicking it
		    }
		  );
		  
		
	}	  
	</script>
	<script type="text/javascript" for="window"  event="onload()"  language="JavaScript">
		
	</script>
	
	<script type="text/javascript">
		
		
		function fnSubmit()
		{
			
			
			document.newGenSavingsForm.action = "/ttcs/newGenSavings.spr?btnPressed=D" ;
			document.getElementById("btnPressed").value = 'D';
			document.getElementById("newGenSavingsForm").submit(); 
		}
		
		
		
		
	</script>

  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  <body onload="fnOnload();">
	<input type="hidden" id="btnPressed" name="btnPressed">
	<form:form commandName="genSavingsDetailsCommand" id = "newGenSavingsForm" name = "newGenSavingsForm" action="newGenSavings.spr" method="POST" >
		<div id="NewCustomerDiv"  >
   			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;widows: 95%;margin-left: 2%">New General Savings Account</div></td>
   				</tr>
   				<tr>
   					<td width="100%">
   						<div class="section">
   							
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="custId">Customer Id:</label></td> 
									<td> 
										 <spring:bind path="genSavingsDetailsCommand.custId">
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="custName">Customer Name:</label></td>
									<td> <spring:bind path="genSavingsDetailsCommand.custName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="savingsAccountNumber">Savings Account Number:</label></td>	
									<td> <spring:bind path="genSavingsDetailsCommand.savingsAccountNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="balanceAmount">Initial Deposit Amount:</label></td>
									<td> <spring:bind path="genSavingsDetailsCommand.balanceAmount"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td>
								</tr>
								<tr>
									<td class="lbl"  ><label for="rateOfInterest">Rate Of Interest:</label></td>
									<td> <spring:bind path="genSavingsDetailsCommand.rateOfInterest"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="openingDate">Opening Date:</label></td>
									<td> <spring:bind path="genSavingsDetailsCommand.openingDate"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
											<img src="../ttcs/view/calendar/calendar.png" id="openingDate_image" name="openingDate_image"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="frequency"> Frequency:</label></td>
									<td> <spring:bind path="genSavingsDetailsCommand.frequency"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
									
									
								</tr>
								
   							</table>
   						</div>
   					</td>
   				</tr>
   				
   				
   				<tr>
					<td>
						<div >
   							
   							<table width="100%">
   								<tr>
   								<td align="center">
									<input type="button" class="btn"  id="btnSelectAll"  onclick="fnSubmit();"  value='Submit' /> &nbsp;&nbsp;
								</td>
								<td align="center">
									<input type="button" class="btn"  id="btnDeSelectAll"  onclick="fnDeSelectAll();" value='Cancel'/> &nbsp;&nbsp;
								</td>
								
								
								</tr>
							</table>
						</div>
					
					</td>
				</tr>
				
				
   			</table>
   		</div>
	</form:form>
		
  </body>
</html>
