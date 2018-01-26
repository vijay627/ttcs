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
		var cursorPlacedRow =-1;
		var cursorPositionAlertMsg= "Please place cursor";
		var deleteConfirmationAlertMsg= "Do you want to delete the selected row?";
		var insertat =1;
				
		function addRow()
		{
			
			
		     var table = document.getElementById('OrderTestDetTable');               
		     var rowCount = table.rows.length;  
		     cursorPlacedRow = rowCount-1;
		    
		     insertat =cursorPlacedRow+1;
		     var row = table.insertRow(insertat);              
		     var colCount = table.rows[cursorPlacedRow].cells.length;              
		     
		     for(var i=0; i<colCount; i++) {                   
			     
			     var newcell = row.insertCell(i);                   
			     newcell.innerHTML = table.rows[cursorPlacedRow].cells[i].innerHTML;                 
			     
			     switch(newcell.childNodes[0].type) {                     
				     case "text":                             
				     	newcell.childNodes[0].value = "";                           
				     	break;                     
				     case "checkbox":                             
				     	newcell.childNodes[0].checked = false;                             
				     	break;                     
				     case "select-one":                             
				     	newcell.childNodes[0].value = "";                        
				     	 break;                 
			     } 
			     	 
			     if(i==0)
			     {
			     		newcell.childNodes[0].id =  'orderRequestCommandList[' + rowCount + '].serialNumber'; 
				     	newcell.childNodes[0].name =  'orderRequestCommandList[' + rowCount + '].serialNumber';				     	
				     	newcell.childNodes[1].value = parseInt(table.rows[cursorPlacedRow].cells[i].childNodes[1].value) +1;;
				     	
			     }else if(i==1)
			     {
			     		newcell.childNodes[0].id =  'orderRequestCommandList[' + rowCount + '].productType'; 
				     	newcell.childNodes[0].name =  'orderRequestCommandList[' + rowCount + '].productType';
			     }else if(i==2)
			     {
			     		newcell.childNodes[0].id =  'orderRequestCommandList[' + rowCount + '].requestFile'; 
				     	newcell.childNodes[0].name =  'orderRequestCommandList[' + rowCount + '].requestFile';
			     }else if(i==3)
			     {
			     		newcell.childNodes[0].id =  'orderRequestCommandList[' + rowCount + '].fileName'; 
				     	newcell.childNodes[0].name =  'orderRequestCommandList[' + rowCount + '].fileName';
			     }else if(i==4)
			     {
			     		newcell.childNodes[0].id =  'orderRequestCommandList[' + rowCount + '].objId'; 
				     	newcell.childNodes[0].name =  'orderRequestCommandList[' + rowCount + '].objId';
			     }
			                    
			                 
		     	}
		     
		     cursorPlacedRow =-1;	         
		   }
		
		function confirmDelete(){
		
		var con = confirm(deleteConfirmationAlertMsg);
		if (con == true)
  		{
  			removeRow();
  		}else {
  			
  		}
		}
		
	   function removeRow() {	  
	   	
	   	var wdtable = document.getElementById('OrderTestDetTable');               
		 var rowCount = wdtable.rows.length; 
		 
		     
	   	if(cursorPlacedRow == -1){
	   		alert(cursorPositionAlertMsg);
	   	}
	   	else {
	   		
	   		if(rowCount > 2)
	   		{
	   			wdtable.deleteRow(cursorPlacedRow);
	   		}else
	   		{
	   			var colCount = wdtable.rows[cursorPlacedRow].cells.length;              
		     	
			     	for(var i=0; i<colCount; i++) { 
			     		if(i==0)
			     		{
			     			wdtable.rows[cursorPlacedRow].cells[i].childNodes[0].value = 1;
			     		}
			     		else {
			     			wdtable.rows[cursorPlacedRow].cells[i].childNodes[0].value = "";
			     		}
			     	}
	   		}
	   	}
	   cursorPlacedRow=-1
	   } 
	     
	   function fnCursorRow(cursorRow)
	   {	   		
	   	cursorPlacedRow =  cursorRow;	   	
	   }
	
		  
	</script>

	<script type="text/javascript">
		
		
		function fnSubmit()
		{
			
			
			document.adminParamFDForm.action = "/ttcs/adminParamFD.spr?btnPressed=D" ;
			document.getElementById("btnPressed").value = 'D';
			document.getElementById("adminParamFDForm").submit(); 
		}
		
		
		
	</script>

  </head>
  
  <jsp:include page="/view/menu.inc.jsp" />
  
  <body onload="fnOnload();">
	<input type="hidden" id="btnPressed" name="btnPressed">
	<form:form commandName="adminParamFDCommand" id = "adminParamFDForm" name = "adminParamFDForm" action="adminParamFD.spr" method="POST" >
		<div id="NewCustomerDiv"  >
   			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;widows: 95%;margin-left: 2%">Fixed Deposit Parameter Setup</div></td>
   				</tr>
   				<tr>
   					<td width="100%">
   						<div id="FixedDepositDiv" style="display: none">
			    			<table width="100%" class="list">
								<tr class="lh">
									<th><a href="javascript:addRow()" ><img 
									src="<c:url value='/view/img/add.gif'/>" title="Add" alt="Add" />
									Add</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
									<th><a href="javascript:confirmDelete()"><img
									src="<c:url value="/view/img/delete.gif"/>" title="Delete"
									alt="Delete" />Delete</a></th>
									
									
								</tr>
							</table>
			    			<c:choose>
								<c:when test="${!empty printManagementCommand.workDescriptionCommandList}">
									<table width="100%" class="list" id="FixedDepositTable">
										<tr class="lh">
											<th align="left">Serial Number</th>
											<th align="left">Scheme Name</th>
											<th align="left">Period of deposit (in months)</th>
											<th align="left">Rate of interest</th>
										</tr>
										
										<c:forEach items="${printManagementCommand.workDescriptionCommandList}" var="workDesc" varStatus="workDescIndex">
											<tr>
												<td>
													<spring:bind path="workDescriptionCommandList[${workDescIndex.index}].serialNumber">
														 <input type="text" name="<c:out value="${status.expression}"/>"
														    	id="<c:out value="${status.expression}"/>"
														    	value="<c:out value="${status.value}"/>"  size="4"   maxlength="4"  onkeypress="return isNumberKey(event)" onclick="fnCursorRow(this.parentNode.parentNode.rowIndex)"/>
													</spring:bind>
												</td>
												<td>
													
														  <form:select path="workDescriptionCommandList[${workDescIndex.index}].groupId" id="groupid" onclick="fnCursorRow(this.parentNode.parentNode.rowIndex)" onchange="fetchFixedDepositriptionDetails(this.options[this.selectedIndex].value)" >												
															<form:options items="${printManagementCommand.groupIdList}" />
														</form:select>
												</td>
												<td>
													<spring:bind path="workDescriptionCommandList[${workDescIndex.index}].workDescription">
														 <input type="text" name="<c:out value="${status.expression}"/>"
														    	id="<c:out value="${status.expression}"/>"
														    	value="<c:out value="${status.value}"/>"  size="100"  maxlength="100" onclick="fnCursorRow(this.parentNode.parentNode.rowIndex)"/>
													</spring:bind>
												</td>
												<td>
													<spring:bind path="workDescriptionCommandList[${workDescIndex.index}].address">
														 <input type="text" name="<c:out value="${status.expression}"/>"
														    	id="<c:out value="${status.expression}"/>" 
														    	value="<c:out value="${status.value}"/>"  size="65"  maxlength="65" onclick="fnCursorRow(this.parentNode.parentNode.rowIndex)"/>
													</spring:bind>
												</td>
												<td>
													<spring:bind path="workDescriptionCommandList[${workDescIndex.index}].pageNumber">
														 <input type="text" name="<c:out value="${status.expression}"/>"
														    	id="<c:out value="${status.expression}"/>"
														    	value="<c:out value="${status.value}"/>"  size="2"  maxlength="40" onclick="fnCursorRow(this.parentNode.parentNode.rowIndex)"/>
													</spring:bind>
												</td>
												<td >
													<spring:bind path="workDescriptionCommandList[${workDescIndex.index}].objId">
														 <input type="hidden" name="<c:out value="${status.expression}"/>"
														    	id="<c:out value="${status.expression}"/>"
														    	value="<c:out value="${status.value}"/>"  size="40"  maxlength="40"/>
													</spring:bind>
												</td>
			    				
											</tr>
										</c:forEach>
									</table>
								 </c:when>
								<c:otherwise>
										<fmt:message key="gen.print.noGroupsFound"/>
								</c:otherwise>
							</c:choose>
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
