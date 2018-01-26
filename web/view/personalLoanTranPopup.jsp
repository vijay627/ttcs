<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	String tranDate = formatter.format(new Date());
	
%>
<!DOCTYPE HTML PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>TTCS-PL Transactions</title>
    
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
	var breakupArray ;
	var resultData;
	
	function fnOnload()
	{
		
		custId = window.opener.document.getElementById("custId").value;
		custName = window.opener.document.getElementById("custName").value;	
		
		accountNumber = window.opener.document.getElementById("personalLoanAccountNumber").value;
		
		
			TtcsDwrUtilities.personalLoanTranDetails(
				   				custId, 
				   				custName, 
				   				accountNumber,
				   				{
				   					async:false,
				   					callback:personalLoanTranDetailsCallBack
				   				}	
							);
		
	
	}
	
	function personalLoanTranDetailsCallBack(emiData)
	{
		
		resultData = emiData;
		
		document.getElementById("EMIDiv").style.display = "block";
		
		document.getElementById("custId").innerHTML = '<b>'+custId+'</b>';
		document.getElementById("custName").innerHTML = '<b>'+custName+'</b>';
		document.getElementById("accountNumber").innerHTML = '<b>'+accountNumber+'</b>';
		
		document.getElementById("totalLoan").innerHTML = '<b>'+emiData.requestedLoanAmount+'</b>';
		document.getElementById("totalInterest").innerHTML = '<b>'+emiData.totalInterest+'</b>';
		document.getElementById("totalAmount").innerHTML = '<b>'+emiData.totalAmount+'</b>';
		
		
		var table = document.getElementById("emiTable"); 
		var rowCount = table.rows.length; 
		
		breakupArray = emiData.breakupBeanArray;
			               
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
			
			var installmentStatus = breakupArray[index].installmentStatus;
			
			cell1.innerHTML = '<center>'+breakupArray[index].installmentNumber+'</center>';	
			cell2.innerHTML = '<center>'+breakupArray[index].installmentDate+'</center>';
			cell3.innerHTML = '<center>'+breakupArray[index].principalPerMonth+'</center>';
			cell4.innerHTML = '<center>'+breakupArray[index].interestPerMonth+'</center>';
			cell5.innerHTML = '<center>'+breakupArray[index].latePaymentStdFee+'</center>';
			cell6.innerHTML = '<center>'+breakupArray[index].latePaymentVarFee+'</center>';
			cell7.innerHTML = '<center><b>'+breakupArray[index].totalInstallmentAmount+'</b></center>';
			//cell7.innerHTML = '<center>'+breakupArray[index].discountAmount+'</center>';
			//cell8.innerHTML = '<center>'+breakupArray[index].reason+'</center>';
			
			//cell10.innerHTML = '<center>'+breakupArray[index].paidAmount+'</center>';
			
			var varDisabled = '';
			if(installmentStatus == 'Paid')
			{
				varDisabled = 'disabled="disabled"';
			}
			
			/*if(installmentStatus != 'Paid')
			{*/
				var emiDiscAmtId = 'emiDiscAmtId'+index;
				cell8.innerHTML ='<input type="text" id='+emiDiscAmtId+' name='+emiDiscAmtId+' '+varDisabled+' maxmaxlength="7" size="7"  value='+breakupArray[index].discountAmount+' />';
				
				var emiReasonId = 'emiReasonId'+index;
				cell9.innerHTML ='<input type="text" id='+emiReasonId+' name='+emiReasonId+' '+varDisabled+' maxlength="20" size="20" value='+breakupArray[index].reason+' >';
				
				var emiPaidAmtId = 'emiPaidAmtId'+index;
				cell10.innerHTML ='<input type="text" id='+emiPaidAmtId+'  name='+emiPaidAmtId+' '+varDisabled+' maxlength="7" size="7" onblur="javascript:fnPaidAmount(this, '+index+');"  value='+breakupArray[index].paidAmount+' />';
			/*}else
			{
				cell8.innerHTML = '<center>'+breakupArray[index].discountAmount+'</center>';
				cell9.innerHTML = '<center>'+breakupArray[index].reason+'</center>';
			
			    cell10.innerHTML = '<center>'+breakupArray[index].paidAmount+'</center>';
			
			}*/
			if(breakupArray[index].paidDate !=null && breakupArray[index].paidDate !='null')
			{
				cell11.innerHTML = breakupArray[index].paidDate;
			}
			cell12.innerHTML = '<center>'+breakupArray[index].balancePrincipal+'</center>';
			cell13.innerHTML = installmentStatus;
			
			
		}
	}
	
	
	function fnPaidAmount(paidAmtObj, index)
	{
		var varPaidAmount = paidAmtObj.value;
		
		if(varPaidAmount!=null && varPaidAmount!='')
		{
			var  emiDiscAmtId= 'emiDiscAmtId'+index;
			
			var varDiscAmt = document.getElementById(emiDiscAmtId).value;
			
			var totalPaidAmount = Number(varPaidAmount);
			
			if(varDiscAmt !=null)
			{
				totalPaidAmount = totalPaidAmount+Number(varDiscAmt);
			}
			
			
			var varTotalInstallmentAmount = Number(breakupArray[index].totalInstallmentAmount);
			
			
			if(totalPaidAmount != varTotalInstallmentAmount)
			{
				alert('Paid amount is less than total installment amount');
				
				document.getElementById("emiTable").rows[index+1].cells[10].innerHTML = '';
				document.getElementById("emiTable").rows[index+1].cells[12].innerHTML = 'Pending';
				
				//var firtCellHtml = document.getElementById("emiTable").rows[index+1].cells[0].innerHTML;
				//document.getElementById("emiTable").rows[index+1].cells[0].innerHTML = '<span><img src="/ttcs/view/images/wrong.png"  height="15" >'+firtCellHtml+'</img></span>';
				
			}else
			{
				
				var varTranDate = '<%=tranDate%>';
				document.getElementById("emiTable").rows[index+1].cells[10].innerHTML = varTranDate;
				document.getElementById("emiTable").rows[index+1].cells[12].innerHTML = 'Paid';
				
				
				//var firtCellHtml = document.getElementById("emiTable").rows[index+1].cells[0].innerHTML;
				//document.getElementById("emiTable").rows[index+1].cells[0].innerHTML = '<span><img src="/ttcs/view/images/right.png"  height="15" >'+firtCellHtml+'</img></span>';
			}
		}
	}
	
	function fnEMIPayment()
	{
			
		var table = document.getElementById("emiTable"); 
		var rowCount = table.rows.length; 
		
		
		
		try
  		{
			
			for(var i = 0; i <rowCount-1; i++)
			{
			    
			    resultData.breakupBeanArray[i].discountAmount =  table.rows[i+1].cells[7].firstChild.value;
			    resultData.breakupBeanArray[i].reason =  table.rows[i+1].cells[8].firstChild.value;
			    resultData.breakupBeanArray[i].paidAmount =  table.rows[i+1].cells[9].firstChild.value;
			    resultData.breakupBeanArray[i].paidDate =  table.rows[i+1].cells[10].innerHTML;
			    resultData.breakupBeanArray[i].installmentStatus =  table.rows[i+1].cells[12].innerHTML;
			    
			    
			    
			}
		}catch(err)
  		{
  			alert(err.message);
  		}
			
			TtcsDwrUtilities.personalLoanEMIPayment(
				   				resultData,
				   				{
				   					async:false,
				   					callback:plEMIPaymentCallBack
				   				}	
							);
		
	
	}
	
	function plEMIPaymentCallBack(tranPaymentData)
	{
		
		
			alert(tranPaymentData);
			
			window.opener.location.reload(false);
			window.close();
			
		
	}
	
	</script>
	

  </head>

  <body onload="fnOnload();">
	
	
		<div class="section" id="EMIDiv" style="display: none;">
			<div id="mainHeaderid" class="subhd" style="border-bottom: 2px solid #ff9900;width:97%;margin-left:2%;">EMI Breakup Deatils</div>
			<table id="emiHeader" width="100%">
				<tr>
					<td>
						<label>&nbsp;&nbsp;Customer Id :</label><span id="custId"></span>
					</td>
					<td>
						<label>Customer Name :</label><span id="custName"></span>
						
					</td>
					<td>
						<label>Loan Account Numner :</label><span id="accountNumber"></span>
						
					</td>
				</tr>
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
					<th align="left" >Inst. Number</th>	
					<th align="left" >Inst. Date</th>
					<th align="left" >Principal Per Month</th>
					<th align="left" >Interest Per Month</th>
					<th align="left">Std Charge</th>
					<th align="left">Var Charge</th>
					<th align="left" >Total Inst. Amount</th>
					<th align="left">Discount Amount</th>
					<th align="left" >Reason</th>
					<th align="left" >Paid Amount</th>
					<th align="left" >Paid Date</th>
					<th align="left" >Balance Principal</th>
					<th align="left" >Status</th>
					
				
				</tr>
				
			</table>
			<table>
				<tr>
					<td align="center">
						<input type="button" class="btn"  id="btnSubmit"  onclick="fnEMIPayment();" value='Submit' /> &nbsp;&nbsp;
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
