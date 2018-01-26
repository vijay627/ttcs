<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TTCS-New Customer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="online banking">
	<meta http-equiv="description" content="New customer creation ">


  </head>
  <jsp:include page="/view/menu.inc.jsp" />
  
  <script type="text/javascript">
		
		
		function fnSubmit()
		{
			
			
			document.newCustomerForm.action = "/ttcs/newCustomer.spr?btnPressed=D" ;
			document.getElementById("btnPressed").value = 'D';
			document.getElementById("newCustomerForm").submit(); 
		}
		
		
	</script>
  <body >
	<input type="hidden" id="btnPressed" name="btnPressed">
	<form:form commandName="customerDetailsCommand" id = "newCustomerForm" name = "newCustomerForm" action="newCustomer.spr" method="POST" >
		<div id="NewCustomerDiv"  >
   			<table class="labelandfield"  class="list" style="margin-left: 10%;margin-right: 10%;background-color: white;">
   				<tr>
   					<td class="subhd" ><div id="mainHeaderid" style="border-bottom: 2px solid #ff9900;">New Customer</div></td>
   				</tr>
   				<tr>
   					<td width="100%">
   						<div class="section">
   							<span class="subhd">Personal Details</span>
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="refCustId">Ref Cust Id:</label></td> 
									<td> 
										 <spring:bind path="customerDetailsCommand.refCustId">
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="custId">Cust Id:</label></td>
									<td> <spring:bind path="customerDetailsCommand.custId"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="title">Title:</label></td>	
									<td> <spring:bind path="customerDetailsCommand.title"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="firstName">First Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.firstName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td>
								</tr>
								<tr>
									<td class="lbl"  ><label for="middleName">Middle Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.middleName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="lastName">Last Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.lastName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="dateOfBirth"> Date Of Birth:</label></td>
									<td> <spring:bind path="customerDetailsCommand.dateOfBirth"> 
										  <input type="date" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="mobileNumber">Mobile Number:</label></td>
									<td> <spring:bind path="customerDetailsCommand.mobileNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="email">Email:</label></td>
									<td> <spring:bind path="customerDetailsCommand.email"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="gender">Gender:</label></td>
									<td> <spring:bind path="customerDetailsCommand.gender"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td>
								</tr>
								<tr>
									<td class="lbl"  ><label for="maritalStatus">Marital Status:</label></td>
									<td> <spring:bind path="customerDetailsCommand.maritalStatus"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="fatherSpouseName">Father/Spouse Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.fatherSpouseName"> 
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
   						<div class="section">
   							<span class="subhd">Present Address Details</span>
   							<table width="100%">
   								
								<tr>
									<td class="lbl"  ><label for="presentHouseNumber">House NO:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.presentHouseNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="presentStreetName">Street Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentStreetName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="presentLocality">Locality/Village:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentLocality"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="presentCity">City:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentCity"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="presentDist">Dist:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentDist"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for=presentSate>State:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentSate"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="presentPIN">PIN:</label></td>
									<td> <spring:bind path="customerDetailsCommand.presentPIN"> 
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
   						<div class="section">
   							<span class="subhd">Permanent Address Details</span>
   							<table width="100%">
   								
								<tr> 
									<td class="lbl"  ><label for="permHouseNumber">House NO:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.permHouseNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="permStreetName">Street Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permStreetName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="permLocality">Locality/Village:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permLocality"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="permCity">City:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permCity"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="permDist">Dist:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permDist"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="permSate">State:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permSate"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="permPIN">PIN:</label></td>
									<td> <spring:bind path="customerDetailsCommand.permPIN"> 
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
   						<div class="section">
   							<span class="subhd">Professional Details</span>
   							<table width="100%">
   								
								<tr>
									<td class="lbl"  ><label for="employeeId">Employee Id:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.employeeId"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="designation">Designation:</label></td>
									<td> <spring:bind path="customerDetailsCommand.designation"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="workingAddress">Working Address:</label></td>
									<td> <spring:bind path="customerDetailsCommand.workingAddress"> 
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
   						<div class="section">
   							<span class="subhd">Proof Details</span>
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="idProof">Id Proof:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.idProof"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="idProofNumber">Id Proof Number:</label></td>
									<td> <spring:bind path="customerDetailsCommand.idProofNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="addressProof">Address Id:</label></td>
									<td> <spring:bind path="customerDetailsCommand.addressProof"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="addressProofNumber">Address Proof Number:</label></td>
									<td> <spring:bind path="customerDetailsCommand.addressProofNumber"> 
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
   						<div class="section">
   							<span class="subhd">Nominee Details</span>
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="nomineeName">Nominee Name:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.nomineeName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="nomineeDateOfBirth">Date Of Birth:</label></td>
									<td> <spring:bind path="customerDetailsCommand.nomineeDateOfBirth"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="relation">Relation:</label></td>
									<td> <spring:bind path="customerDetailsCommand.relation"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
									<td class="lbl"  ><label for="nomineeAddress">Address:</label></td>
									<td> <spring:bind path="customerDetailsCommand.nomineeAddress"> 
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
   						<div class="section">
   							<span class="subhd">Bank Details</span>
   							<table width="100%">
   								
				   				<tr>
									<td class="lbl"  ><label for="bankName">Bank Name:</label></td>
									
									<td> <spring:bind path="customerDetailsCommand.bankName"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="accountNumber">Account Number:</label></td>
									<td> <spring:bind path="customerDetailsCommand.accountNumber"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								</tr>
								<tr>
									<td class="lbl"  ><label for="branchName">Branch Name:</label></td>
									<td> <spring:bind path="customerDetailsCommand.branchName">	 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="micrCode">MICR Code:</label></td>
									<td> <spring:bind path="customerDetailsCommand.micrCode"> 
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
   						<div class="section">
   							<span class="subhd">Other Details</span>
   							<table width="100%">
   								<tr>
									<td class="lbl"  ><label for="accountOpeningChargesColleted">Opening Charges Colleted:</label></td>
									<td> <spring:bind path="customerDetailsCommand.accountOpeningChargesColleted"> 
										  <input type="text" name="<c:out value="${status.expression}"/>"
											id="<c:out value="${status.expression}"/>"
											value="<c:out value="${status.value}"/>"  size="30"  maxlength="40"/>
									     </spring:bind>
									</td> 
								
									<td class="lbl"  ><label for="documentsCollected">Documents Collected:</label></td>
									<td> <spring:bind path="customerDetailsCommand.documentsCollected"> 
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
