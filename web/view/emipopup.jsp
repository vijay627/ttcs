<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE HTML PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>TTCS-Search Popup</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="online banking">
	<meta http-equiv="description" content="New customer creation ">
	
	<link rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/ttcs.css">
	
	<style> 
	 .odd{background-color: #FFFF99;} 
	 .even{background-color: aqua;}
	 
	 .changecolor{background-color: #00FFFF;} 
	 .resetcolor{background-color: ;} 
	  
	</style>
	
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
	
	

	
	<script type="text/javascript">
		
	
	
	
	function fnOnload()
	{
		var principal = window.opener.document.getElementById("requestedLoanAmount").value; //100000;
		var rateOfInterest = window.opener.document.getElementById("rateOfInterest").value;//12;
		var numberOfInstallments = window.opener.document.getElementById("numberOfinstallments").value;//12;
		var startDate = window.opener.document.getElementById("collectionStartDate").value;//'10-11-2013';
		
		
		if(principal  &&  rateOfInterest && numberOfInstallments && startDate )		
		{
		
			TtcsDwrUtilities.generateEMI(
				   				principal, 
				   				rateOfInterest, 
				   				numberOfInstallments,
								startDate,
				   				{
				   					async:false,
				   					callback:generateEMICallBack
				   				}	
							);
		}
	
	}
	
	function generateEMICallBack(emiData)
	{
		
		document.getElementById("EMIDiv").style.display = "block";
		
		document.getElementById("totalLoan").innerHTML = '<b>'+emiData.principal+'</b>';
		document.getElementById("totalInterest").innerHTML = '<b>'+emiData.totalInterest+'</b>';
		document.getElementById("totalAmount").innerHTML = '<b>'+emiData.totalAmount+'</b>';
		
		
		var table = document.getElementById("emiTable"); 
		var rowCount = table.rows.length; 
		
		var breakupArray = emiData.breakupBeanArray;
			               
		for(var i = rowCount - 1; i > 0; i--)
		{
		    table.deleteRow(i);
		}
		
		for(var index=0; index<breakupArray.length; index++)
		{
			var rowNumber = Number(index)+1;
			//alert(rowNumber);
			var row = table.insertRow(rowNumber);
			
			if(index%2==0) 
		     {
		     	row.className = "even"; 
		     }else
		     {
		     	row.className = "odd"; 
		     }
			
			var cell1 = row.insertCell(0);             
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			var cell6 = row.insertCell(5);
			var cell7 = row.insertCell(6);
			var cell8 = row.insertCell(7);
			var cell9 = row.insertCell(8);
			var cell10 = row.insertCell(9);
			var cell11 = row.insertCell(10);
			var cell12 = row.insertCell(11);
			var cell13 = row.insertCell(12);
			
			cell1.innerHTML = '<center>'+breakupArray[index].installmentNumber+'</center>';	
			cell2.innerHTML = '<center>'+breakupArray[index].installmentDate+'</center>';
			cell3.innerHTML = '<center>'+breakupArray[index].principalPerMonth+'</center>';
			cell4.innerHTML = '<center>'+breakupArray[index].interestPerMonth+'</center>';
			cell5.innerHTML = '<center>'+breakupArray[index].latePaymentStdFee+'</center>';
			cell6.innerHTML = '<center>'+breakupArray[index].latePaymentVarFee+'</center>';
			cell7.innerHTML = '<center>'+breakupArray[index].discountAmount+'</center>';
			cell8.innerHTML = '<center>'+breakupArray[index].reason+'</center>';
			cell9.innerHTML = '<center><b>'+breakupArray[index].totalInstallmentAmount+'</b></center>';
			cell10.innerHTML = '<center>'+breakupArray[index].paidAmount+'</center>';
			cell11.innerHTML = '<center>'+breakupArray[index].paidDate+'</center>';
			cell12.innerHTML = '<center>'+breakupArray[index].balancePrincipal+'</center>';
			cell13.innerHTML = '<center>'+breakupArray[index].installmentStatus+'</center>';
			
			
		}
	}
	
	
	</script>
	

  </head>

  <body onload="fnOnload();">
	
	
		<div class="section" id="EMIDiv" style="display: none;">
			<div id="mainHeaderid" class="subhd" style="border-bottom: 2px solid #ff9900;width:97%;margin-left:2%;">EMI Breakup Deatils</div>
			<table id="emiHeader" width="100%">
				<tr>
					<td>
						<label>&nbsp;&nbsp;Loan Amount :</label><span id="totalLoan"></span>
					</td>
					<td>
						<label>Total Interest :</label><span id="totalInterest"></span>
						
					</td>
					<td>
						<label>Total Amount :</label><span id="totalAmount"></span>
					</td>
				</tr>
			</table>
			<table id="emiTable" class="labelandfield"  class="list" >
				<tr style="background-color: purple;color:white;">
					<th align="left" >Installment Number</th>	
					<th align="left" >Installment Date</th>
					<th align="left" >Principal Per Month</th>
					<th align="left" >Interest Per Month</th>
					<th align="left">Std Charge</th>
					<th align="left">Var Charge</th>
					<th align="left">Discount Amount</th>
					<th align="left">Reason</th>
					<th align="left" >Total Installment Amount</th>
					<th align="left" >Paid Amount</th>
					<th align="left" >Paid Date</th>
					<th align="left" >Balance Principal</th>
					<th align="left" >Installment Status</th>
					
				</tr>
				
			</table>
		</div>

		
  </body>
</html>
