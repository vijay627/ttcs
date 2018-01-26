<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE HTML PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>TTCS-Transaction Popup</title>
    
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
		 
	}
	
	
	function fnGenSavingsTranPopup()
	{
			tranType = document.getElementById("tranType").value;
			tranAmount = document.getElementById("tranAmount").value;
			

			TtcsDwrUtilities.genSavingsTranPopup(
				   				custId, 
				   				custName, 
				   				accountNumber,
								avaialableAmount,
								tranType,
								tranAmount,
				   				{
				   					async:false,
				   					callback:genSavingsTranPopupCallBack
				   				}	
							);
		
	
	}
	
	function genSavingsTranPopupCallBack(tranData)
	{
		
		
			alert(tranData);
			
			window.opener.location.reload(false);
			window.close();
			
		
	}
	
	
	</script>
	

  </head>

  <body onload="fnOnload();">
	
	
		<div  id="TranDiv" >
			<div id="mainHeaderid" class="subhd" style="border-bottom: 2px solid #ff9900;width:97%;margin-left:2%;">Transaction Manager</div>
			<table id="tranTable" class="list innertable" style="margin-left: 5%;">
				<tr>
					<td>
						<label><b>&nbsp;&nbsp;Cust Id :&nbsp;</b></label><span id="custId"></span>
					</td>
					<td>
						<label><b>Cust Name :&nbsp;</b></label><span id="custName"></span>
						
					</td>
				</tr>
				<tr>
					<td>
						<label><b>&nbsp;&nbsp;Account Number :&nbsp;</b></label><span id="accountNumber"></span>
					</td>
					<td>
						<label><b>Available Balance :&nbsp;</b></label><span id="balanceAmount"></span>
					</td>
				</tr>
				<tr>
					<td><label><b>&nbsp;&nbsp;Transaction Type :</b></label>
						<select id="tranType" name="tranType">
							<option value="D">Deposit</option>
							<option value="W">Withdrawal</option>
						</select>
					</td>
					<td><label><b>Amount :</b></label>
						<input type="text" id="tranAmount" name="tranAmount" />
					</td>
				</tr>
				
				<tr>
					<td align="center">
						<input type="button" class="btn"  id="btnSubmit"  onclick="fnGenSavingsTranPopup();" value='Submit' /> &nbsp;&nbsp;
					</td>
					<td align="center">
						<input type="button" class="btn"  id="btnCancel"  onclick="fnCancel();" value='Cancel'/> &nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
					<td>&nbsp;
					</td>
				</tr>
				
				
			</table>
		</div>

		
  </body>
</html>
