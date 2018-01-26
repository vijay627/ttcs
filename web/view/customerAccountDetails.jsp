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
    
    <title>TTCS-Customer Account Details</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="online banking">
	<meta http-equiv="description" content="New customer creation ">

	<script type="text/javascript">
			
		function genSavingsTransaction()
		{
			var win = window.open("/ttcs/view/genSavingsTranPopup.jsp",'Search','width=850,height=250,left=50,top=50,titlebar=no,menubar=no,');
		}
		function genSavingsStmt()
		{
			var win = window.open("/ttcs/view/genSavingsStmt.jsp",'Search','width=850,height=250,left=50,top=50,titlebar=no,menubar=no,');
		}
		
		function personalLoanTransaction()
		{
			var win = window.open("/ttcs/view/personalLoanTranPopup.jsp",'Search','width=1050,height=550,left=50,top=50,titlebar=no,menubar=no,');
		}
		function personalLoanStmt()
		{
			var win = window.open("/ttcs/view/personalLoanStmtPopup.jsp",'Search','width=1050,height=550,left=50,top=50,titlebar=no,menubar=no,');
		}
		
		function handLoanTransaction()
		{
			var win = window.open("/ttcs/view/handLoanTranPopup.jsp",'Search','width=1050,height=550,left=50,top=50,titlebar=no,menubar=no,');
		}
		function handLoanStmt()
		{
			var win = window.open("/ttcs/view/handLoanStmtPopup.jsp",'Search','width=1050,height=550,left=50,top=50,titlebar=no,menubar=no,');
		}
		
		
	</script>
  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  <body >
	<form:form commandName="customerAccountDetailsCommand" id = "customerAccountDetailsForm" action="customerAccountDetails.spr" method="POST" >
		<div id="CustomerAccountMini StatementDiv"  style="margin-left: 2%;margin-right: 2%;">
   			
   			<table class="labelandfield"  width="100%" style="background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;">Customer Account Details</div></td>
   				</tr>
   				<tr>
   					<td >
   						<div  >
   							<span class="subhd1">Customer Details</span>
   							
   							<input type="hidden" name="custId" id ="custId"
								value="<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.custId}" />" />
							<input type="hidden" name="custName" id ="custName"
								value="<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.firstName}"/>&nbsp;<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.middleName}"/>&nbsp;<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.lastName}" />" />
   							
   							<table class="list inntertable">
   								
				   				<tr class="lh" >
									<th align="left" class="lbl"><b>Cust Id</b></th>
									<th align="left" class="lbl"><b>Name</b></th>
									<th align="left" class="lbl"><b>Date Of Birth</b></th>
									<th align="left" class="lbl"><b>Mobile Number</b></th>
									<th align="left" class="lbl"><b>Father/Spouse Name</b></th>
									<th align="left" class="lbl"><b>E-Mail</b></th>
								</tr>
				   				<tr class="lh" >
									
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.custId}"/></td>									
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.firstName}"/>&nbsp;<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.middleName}"/>&nbsp;<c:out value="${customerAccountDetailsCommand.customerDetailsCommand.lastName}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.dateOfBirth}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.mobileNumber}"/></td>								
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.fatherSpouseName}"/></td>								
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.customerDetailsCommand.email}"/></td>								
									
								</tr>
   							</table>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td>
   						&nbsp;
   					</td>
   				</tr>
   				<tr>
   					<td >
   						<div  style="height: 100px;">
   							<span class="subhd1">General Savings Accounts</span>
   							
   							<input type="hidden" name="genSavingsAccountNumber" id ="genSavingsAccountNumber"
								value="<c:out value="${customerAccountDetailsCommand.genSavingsDetailsCommand.savingsAccountNumber}" />" />
							<input type="hidden" name="genSavingsBalanceAmount" id ="genSavingsBalanceAmount"
								value="<c:out value="${customerAccountDetailsCommand.genSavingsDetailsCommand.balanceAmount}" />" />
   							<table class="list inntertable">
   								
				   				<tr class="lh" >
									<th align="left" class="lbl"><b>Account Number</b></th>
									<th align="left" class="lbl"><b>Account Open Date</b></th>
									<th align="left" class="lbl"><b>Balance Amount</b></th>
									<th align="left" class="lbl"><b>Account Status</b></th>
									<th align="left" class="lbl"><b>Transaction</b></th>
									<th align="left" class="lbl"><b>Mini Statement</b></th>
								</tr>
								<tr>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.genSavingsDetailsCommand.savingsAccountNumber}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.genSavingsDetailsCommand.openingDate}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.genSavingsDetailsCommand.balanceAmount}"/></td>
									<td align="left" class="lbl">&nbsp;</td>
									<td align="left" class="lbl"><b><a href="javascript:genSavingsTransaction();" style="color: blue;">deposit/withdrawal</a></b></td>
									<td align="left" class="lbl"><b><a href="javascript:genSavingsStmt();" style="color: blue;">view</a></b></td>
									
								</tr>
   							</table>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td >
   						<div  style="height: 100px;">
   							<span class="subhd1">Fixed Deposit Accounts</span>
   							<table class="list inntertable">
   								
				   				<tr class="lh" >
									<th align="left" class="lbl"><b>Account Number</b></th>
									<th align="left" class="lbl"><b>Account Open Date</b></th>
									<th align="left" class="lbl"><b>Balance Amount</b></th>
									<th align="left" class="lbl"><b>Account Status</b></th>
									<th align="left" class="lbl"><b>Transaction</b></th>
									<th align="left" class="lbl"><b>Mini Statement</b></th>
								</tr>
								<tr>
									<td colspan="6" align="center" class="lbl"> No Fixed Accounts Available</td>
								</tr>
   							</table>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td >
   						<div  style="height: 100px;">
   							<span class="subhd1">Vehicle Loan Account</span>
   							<table class="list inntertable">
   								
				   				<tr class="lh" >
									<th align="left" class="lbl"><b>Account Number</b></th>
									<th align="left" class="lbl"><b>Account Open Date</b></th>
									<th align="left" class="lbl"><b>Balance Amount</b></th>
									<th align="left" class="lbl"><b>Account Status</b></th>
									<th align="left" class="lbl"><b>Transaction</b></th>
									<th align="left" class="lbl"><b>Mini Statement</b></th>
								</tr>
								<tr>
									<td align="left" class="lbl">
									<input type="hidden" name="handLoanAccountNumber" id ="handLoanAccountNumber"
									value="<c:out value="${customerAccountDetailsCommand.handLoanDetailsCommand.loanAccountNumber}" />" />
									<c:out value="${customerAccountDetailsCommand.handLoanDetailsCommand.loanAccountNumber}"/></td>
									
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.handLoanDetailsCommand.disbursedDate}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.handLoanDetailsCommand.requestedLoanAmount}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.handLoanDetailsCommand.accountSatus}"/></td>
									<td align="left" class="lbl"><b><a href="javascript:handLoanTransaction();" style="color: blue;">payment/close</a></b></td>
									<td align="left" class="lbl"><b><a href="javascript:handLoanStmt();" style="color: blue;">view</a></b></td>
								</tr>
   							</table>
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td >
   						<div  style="height: 100px;">
   							<span class="subhd1">Personal Loan Account</span>
   							<table class="list inntertable">
   								
				   				<tr>
									<th align="left" class="lbl"><b>Account Number</b></th>
									<th align="left" class="lbl"><b>Account Open Date</b></th>
									<th align="left" class="lbl"><b>Balance Principal</b></th>
									<th align="left" class="lbl"><b>Account Status</b></th>
									<th align="left" class="lbl"><b>Transaction</b></th>
									<th align="left" class="lbl"><b>Mini Statement</b></th>
								</tr>
								<tr>
									<td align="left" class="lbl">
									<input type="hidden" name="personalLoanAccountNumber" id ="personalLoanAccountNumber"
									value="<c:out value="${customerAccountDetailsCommand.personalLoanDetailsCommand.loanAccountNumber}" />" />
									<c:out value="${customerAccountDetailsCommand.personalLoanDetailsCommand.loanAccountNumber}"/></td>
									
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.personalLoanDetailsCommand.disbursedDate}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.personalLoanDetailsCommand.requestedLoanAmount}"/></td>
									<td align="left" class="lbl"><c:out value="${customerAccountDetailsCommand.personalLoanDetailsCommand.accountSatus}"/></td>
									<td align="left" class="lbl"><b><a href="javascript:personalLoanTransaction();" style="color: blue;">payment/close</a></b></td>
									<td align="left" class="lbl"><b><a href="javascript:personalLoanStmt();" style="color: blue;">view</a></b></td>
								</tr>
   							</table>
   						</div>
   					</td>
   				</tr>
   				
   				
   				
   				<tr>
					<td>
						<div >
   							
   							<table width="80%" style="margin-left: 10%;margin-right: 10%;">
   								<tr>
   								<td align="center">
									<input type="button" class="btn"  id="btnSelectAll"  onclick="fnSelectAll();" value='Submit' /> &nbsp;&nbsp;
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
