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
    
    <title>TTCS-New Customer</title>
    
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
		      inputField	: "disbursedDate",         // ID of the input field for calendar
		      button     	: "disbursedDate_image"       // ID of the button/image which is used to open the calendar by clicking it
		    }
		  );
		  
		Calendar.setup(
		    {
		      inputField	: "collectionStartDate",         // ID of the input field for calendar
		      button     	: "collectionStartDate_image"       // ID of the button/image which is used to open the calendar by clicking it
		    }
		  );
	}	  
	</script>
	<script type="text/javascript" for="window"  event="onload()"  language="JavaScript">
		
	</script>
	
	<script type="text/javascript">
		
		
		function fnSubmit()
		{
			
			
			document.newPersonalLoanForm.action = "/ttcs/newPersonalLoan.spr?btnPressed=D" ;
			document.getElementById("btnPressed").value = 'D';
			document.getElementById("newPersonalLoanForm").submit(); 
		}
		
		
		function fnEMIPopup()
		{
			 var win = window.open("/ttcs/view/emipopup.jsp",'Search','width=950,height=550,left=50,top=50');
		}
		
	</script>

  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  <body onload="fnOnload();">
	<input type="hidden" id="btnPressed" name="btnPressed">
	<form:form commandName="personalLoanDetailsCommand" id = "newPersonalLoanForm" name = "newPersonalLoanForm" action="newPersonalLoan.spr" method="POST" >
		<div id="NewCustomerDiv"  >
   			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;widows: 95%;margin-left: 2%">New Personal Loan Account</div></td>
   				</tr>
   				<tr>
   					<td width="100%">
   						<div class="section">
   							
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="custId">Customer Id:</label></td> 
									<td> 
										 <spring:bind path="personalLoanDetailsCommand.custId">
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="custName">Customer Name:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.custName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="loanAccountNumber">Loan Account Number:</label></td>	
									<td> <spring:bind path="personalLoanDetailsCommand.loanAccountNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="eligibleLoanAmount">Eligible Loan Amount:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.eligibleLoanAmount"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td>
								</tr>
								<tr>
									<td class="lbl"  ><label for="requestedLoanAmount">Requested Loan Amount:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.requestedLoanAmount"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="rateOfInterest">Rate Of Interest:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.rateOfInterest"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="numberOfinstallments"> Terms:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.numberOfinstallments"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40" />
									     </spring:bind>
									</td> 
									
									<td class="lbl"  ><label for="processingCharge"> Processing Charge:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.processingCharge"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="latePaymentStdFee">Late Payment Std Fee:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.latePaymentStdFee"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="latePaymentVarFee">Late Payment Var Fee:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.latePaymentVarFee"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="disbursedDate">Disbursed Date:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.disbursedDate"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"  />
											<img src="../ttcs/view/calendar/calendar.png" id="disbursedDate_image" name="disbursedDate_image"/>
									     </spring:bind>
									</td>
								
									<td class="lbl"  ><label for="collectionStartDate">Collection Start Date:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.collectionStartDate"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"  />
											<img src="../ttcs/view/calendar/calendar.png" id="collectionStartDate_image" name="collectionStartDate_image"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="enableLoanInsurance">Enable Loan Insurance:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.enableLoanInsurance"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="loanInsuranceAccountNumber">Loan Insurance Account Number:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.loanInsuranceAccountNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="loanInsurancePremium">Loan Insurance Premium:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.loanInsurancePremium"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="disbursableAmount">Disbursable Amount:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.disbursableAmount"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="guarantorCustId">Guarantor Cust Id:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.guarantorCustId"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
											<img src="../ttcs/view/images/search.gif" id="CustIdsearch" name="CustIdsearch"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="guarantorName">Guarantor Name:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.guarantorName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="customerDocsRecieved">Customer Docs Recieved:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.customerDocsRecieved"> 
										  <input type="checkbox" name="<c:out value="${status.expression}"/>"
									    	id="<c:out value="${status.expression}"/>"
									    	value="Y" <c:if test="${status.value == 'Y'}">checked</c:if> />
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="guarantorDocsRecieved">Guarantor Docs Recieved:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.guarantorDocsRecieved"> 
										  <input type="checkbox" name="<c:out value="${status.expression}"/>"
									    	id="<c:out value="${status.expression}"/>"
									    	value="Y" <c:if test="${status.value == 'Y'}">checked</c:if> />
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="loanReason">Loan Reason:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.loanReason"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="accountSatus">Account Satus:</label></td>
									<td> <spring:bind path="personalLoanDetailsCommand.accountSatus"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
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
								<td align="center">
									<input type="button" class="btn"  id="btnDeSelectAll"  onclick="fnEMIPopup();" value='PRINT EMI'/> &nbsp;&nbsp;
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
