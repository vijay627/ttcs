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
    
    <title>TTCS-Admin</title>
    
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
		 
	}	  
	</script>
	<script type="text/javascript" for="window"  event="onload()"  language="JavaScript">
		
	</script>
	
	<script type="text/javascript">
		
		
		function fnSubmit()
		{
			
			
			document.adminParamGSForm.action = "/ttcs/adminParamGS.spr?btnPressed=D" ;
			document.getElementById("btnPressed").value = 'D';
			document.getElementById("adminParamGSForm").submit(); 
		}
		
		
		
	</script>

  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  <body onload="fnOnload();">
	<input type="hidden" id="btnPressed" name="btnPressed">
	<form:form commandName="adminParamGSCommand" id = "adminParamGSForm" name = "adminParamGSForm" action="adminParamGS.spr" method="POST" >
		<div id="NewCustomerDiv"  >
   			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;widows: 95%;margin-left: 2%">Savings Account Parameter Setup</div></td>
   				</tr>
   				<tr>
   					<td width="100%">
   						<div class="section">
   							
   							<table width="100%">
   								
								
								<tr>
									<td class="lbl"  ><label for="minimumDeposit">Minimum Deposit :</label></td>
									<td> <spring:bind path="adminParamGSCommand.minimumDeposit"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="rateOfInterest">Rate Of Interest:</label></td>
									<td> <spring:bind path="adminParamGSCommand.rateOfInterest"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="frequency"> Frequency:</label></td>
									<td> <spring:bind path="adminParamGSCommand.frequency"> 
										   <select name="<c:out value="${status.expression}"/>"
											  id="<c:out value="${status.expression}"/>"    value="<c:out value="${status.value}"/>" >
											<option value="N" ></option>
											<option value="M" >MONTHLY</option>
											<option value="Q" >QUATERLY</option>
											<option value="H" >HALF-YEARLY</option>
											<option value="Y" >YEARLY</option>
											</select>
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
