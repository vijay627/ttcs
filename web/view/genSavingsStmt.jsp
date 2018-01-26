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
		
	var custId;
	var custName;	
	var accountNumber;
	var avaialableAmount;
	
	 window.onload = fnOnload;
	 
	function fnOnload()
	{
		
		 custId = window.opener.document.getElementById("custId").value;
		 custName = window.opener.document.getElementById("custName").value;	
		
		 accountNumber = window.opener.document.getElementById("genSavingsAccountNumber").value;
		 avaialableAmount = window.opener.document.getElementById("genSavingsBalanceAmount").value;
		 
		 
		 
		 document.getElementById("custId").innerHTML = custId;
		 document.getElementById("custName").innerHTML = custName;
		 document.getElementById("accountNumber").innerHTML = accountNumber;
		 document.getElementById("balanceAmount").innerHTML = avaialableAmount;
		 
	
			
			

			TtcsDwrUtilities.genSavingsStmtPopup(
				   				custId, 
				   				custName, 
				   				accountNumber,
				   				{
				   					async:false,
				   					callback:genSavingsStmtPopupCallBack
				   				}	
							);
		
	
	}
	
	function genSavingsStmtPopupCallBack(tranBeanArray)
	{
		
		
		var table = document.getElementById("genSavingsStmtTable"); 
		var rowCount = table.rows.length; 
		
		
		for(var i = rowCount - 1; i > 0; i--)
		{
		    table.deleteRow(i);
		}
		
		for(var index=0; index<tranBeanArray.length; index++)
		{
			var rowNumber = Number(index)+1;
			
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
			
			cell1.innerHTML = '<center>'+tranBeanArray[index].tranId+'</center>';	
			cell2.innerHTML = '<center>'+tranBeanArray[index].tranDate+'</center>';
			cell3.innerHTML = '<center>'+tranBeanArray[index].tranDesc+'</center>';
			
			if(tranBeanArray[index].depositAmount !=null && tranBeanArray[index].depositAmount!='null')
			{
				cell4.innerHTML = '<center>'+tranBeanArray[index].depositAmount+'</center>';
			}else
			{
				cell4.innerHTML = '';
			}
			
			if(tranBeanArray[index].withdrawalAmount !=null && tranBeanArray[index].withdrawalAmount!='null')
			{
				cell5.innerHTML = '<center>'+tranBeanArray[index].withdrawalAmount+'</center>';
			}else
			{
				cell5.innerHTML = '';
			}
			
			cell6.innerHTML = '<center>'+tranBeanArray[index].closingBalance+'</center>';
			
			
		}
			
			
		
	}
	
	
	</script>
	

  </head>

  <body onload="fnOnload();">
	
	
		<div class="section" id="GenSavingsDiv">
			<div id="mainHeaderid" class="subhd" style="border-bottom: 2px solid #ff9900;width:97%;margin-left:2%;">Savings Account Transaction History</div>
			<table id="genSavingsStmtHdr" class="list innertable" style="margin-left: 5%;">
				<tr>
					<td colspan="3">
						<label><b>&nbsp;&nbsp;Cust Id :&nbsp;</b></label><span id="custId"></span>
					</td>
					<td colspan="3">
						<label><b>Cust Name :&nbsp;</b></label><span id="custName"></span>
						
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<label><b>&nbsp;&nbsp;Account Number :&nbsp;</b></label><span id="accountNumber"></span>
					</td>
					<td colspan="3">
						<label><b>Available Balance :&nbsp;</b></label><span id="balanceAmount"></span>
					</td>
				</tr>
			</table>
			<table id="genSavingsStmtTable" class="labelandfield"  class="list" style="margin-left: 5%;">	
			    <tr class="lh" style="background-color: purple;color:white;">
					<th align="left"  class="lbl">Transaction Id</th>	
					<th align="left"  class="lbl">Transaction Date</th>
					<th align="left"  class="lbl">Description</th>
					<th align="left"  class="lbl">Deposit</th>
					<th align="left" class="lbl">Withdrawal</th>
					<th align="left" class="lbl">Closing Balance</th>
					
				</tr>
				
			</table>
		</div>

		
  </body>
</html>
