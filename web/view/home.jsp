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
    
    <title>TTCS</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type=text/javascript charset=utf-8 
	src="<%=request.getContextPath()%>/view/css/jquery.min.js"></script>
	
	<script type=text/javascript 
	src="<%=request.getContextPath()%>/view/css/hoverpopup.js"></script>
	
	<script type=text/javascript 
	src="<%=request.getContextPath()%>/view/css/clearbox.js"></script>
	
	<link rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/clearbox.css">
	
	<link rel=home href="http://www.clarkbuilders.com/">
	
	<link title=News rel=alternate type=application/rss+xml href="http://www.clarkbuilders.com/rss/news.rss">
	
	<link title="Job listings - Field" rel=alternate type=application/rss+xml 
	href="http://www.clarkbuilders.com/rss/jobs-field.rss">
	
	<link title="Job listings - Office" rel=alternate type=application/rss+xml 
	href="http://www.clarkbuilders.com/rss/jobs-office.rss">
	
	<!-- jCarousel files -->
	<script type=text/javascript 
	src="<%=request.getContextPath()%>/view/js/jquery.jcarousel.js"></script>
	
	<link rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/jquery.jcarousel.css">
	
	<link 	rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/jcarousel.css">
	
	<link 	rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/clark.css">
	
	<link rel=stylesheet type=text/css href="<%=request.getContextPath()%>/view/css/defaults.css">
	
	<link rel=stylesheet type=text/css href="<%=request.getContextPath()%>/view/css/typography.css">
	
	<link rel="stylesheet" type="text/css" href="/ttcs/view/engine1/style.css" />
		
	<link rel=stylesheet type=text/css 
	href="<%=request.getContextPath()%>/view/css/ttcs.css">
	
	<script type="text/javascript" src="/ttcs/view/engine1/jquery.js"></script>
	<!--[if IE 6]>
	<script src="/js/DD_belatedPNG.js"></script><script>  DD_belatedPNG.fix('#newsticker, .enticer, #headlinestopfade, #headlinesbotfade, .photo-meta-data');</script><link href="/css/nav_ie.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	
	<link rel=stylesheet type=text/css 	href="<%=request.getContextPath()%>/view/js/jquery-ui.css">
	
	<script type=text/javascript src="<%=request.getContextPath()%>/view/js/jquery-ui.js"></script>
	
	<script type=text/javascript src="<%=request.getContextPath()%>/view/js/formCode.js"></script>
	
	<script type=text/javascript>    $(document).ready(function() {    	$('.datepicker').datepicker();        $('#inputborder').example('Search');    });</script>
	
	<script type=text/javascript src="<%=request.getContextPath()%>/view/js/brand"></script>
	
	<style type=text/css>#toppic {
		BACKGROUND-IMAGE: url(../../images/headers/content_toppic8.jpg)
	}
	
	H1#replace {
		TEXT-TRANSFORM: uppercase; FONT-FAMILY: aniversregular; FONT-SIZE: 28px
	}
	
	H2.replace {
		TEXT-TRANSFORM: uppercase; FONT-FAMILY: aniversregular; COLOR: #e61938; FONT-SIZE: 22px; FONT-WEIGHT: normal
	}
	
	H2.title {
		WIDTH: 590px; FONT-FAMILY: aniversregular; COLOR: #e61938; FONT-SIZE: 22px; FONT-WEIGHT: normal
	}
	
	H3.replace {
		TEXT-TRANSFORM: uppercase; FONT-FAMILY: aniversregular; COLOR: #3b3b3b; FONT-SIZE: 16px
	}
	</style>
	
	<script type="text/javascript">
		function fnSubmitLogin()
		{
			//alert('hi');
			document.getElementById("userAuthenticationForm").submit(); 
		}
	</script>

  </head>
  
  <body class=inside>
	<div id=wrapper>
	<div id=container>
	<div id=topbar>
	<img class=clarklogo alt="TTCS Logo" 
	src="/ttcs/view/images/ttcslogo.png" width="450px" height="60" style="margin-left: -150px;margin-top: 25px;">
		
	<div id=nav  >
		<ul id=navigation style="float: right;">
	  		<li class="current"><a href="home.jsp"><b>Home</b></a> </li>
	  		<li>
	  			<a href="deposits.jsp"><b>Deposits</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="genSavings.jsp">General Savings</a> </li>
	    			<li><a href="fixedDeposits.jsp">Fixed Deposits</a> </li>
	    			<li><a href="recurringDesposits.jsp">Recurring Deposits</a>
	    			<li><a href="recurringDesposits.jsp">10% Deposit</a>
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li><a href="deposits.jsp"><b>Loans</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="genSavings.jsp">Hand Loans</a> </li>
	    			<li><a href="fixedDeposits.jsp">Medical Loans</a> </li>
	    			<li><a href="fixedDeposits.jsp">Education Loans</a> </li>
	    			<li><a href="fixedDeposits.jsp">Marriage Loans</a> </li>
	    			<li><a href="fixedDeposits.jsp">Persoanl Loans</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li><a href="deposits.jsp"><b>Insurance</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="genSavings.jsp">General Insurance</a> </li>
	    			<li><a href="fixedDeposits.jsp">Loan Insurance</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li class=nodd><a href="donations.jsp"><b>Donations</b></a> </li>
	    	
	    	<li><a href="deposits.jsp"><b>Calculator</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="genSavings.jsp">Loan </a> </li>
     	 			<li><a href="genSavings.jsp">Fixed Deposit </a> </li>
	    			<li><a href="fixedDeposits.jsp">Recurring Deposit</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li class=nodd><a href="events.jsp"><b>Events</b></a> </li>
	    	
	    	<li class=nodd><a href="contactUs.jsp"><b>Contact Us</b></a> </li>
	    	
	
	
	</ul>	
		
	</div>	
	</div>
		<div class=clear></div>
	</div>	
	</div>
	
	
	<div id=secondarynavigation>
		
		<marquee scrolldelay="100"  direction="left" style="color: white;font-weight: bold; font-size: medium;"> Upadyaya Podhupu Sahakara Sangham   Gonegandla  Kurnool Dist - 518463   Est: 1995</marquee>
  	
   </div>
   
  <div id=toppic style="width: 100%;" >
  	<table>
  		<tr>
  			<td width="100%">
  				<table width="100%">
  				<tr>
  					<td width="100%">
  				
		  				<div id="wowslider-container1" style="width: 100%;height: 250px;margin-top: -170px;padding: 5px; padding-right: 0px;padding-left: 85px;padding-bottom: 0px;" >
						<div class="ws_images" style="width: 100%;height: 250px;"><ul>
						<li><img src="/ttcs/view/data1/images/bank.jpg" alt="TTCS" title="TTCS" id="wows1_0"/></li>
						<li><img src="/ttcs/view/data1/images/savings.jpg" alt="Non Recurring Deposits" title="Non Recurring Deposits" id="wows1_1"/></li>
						<li><img src="/ttcs/view/data1/images/fd.jpg" alt="Fixed Deposits" title="Fixed Deposits" id="wows1_2"/></li>
						<li><img src="/ttcs/view/data1/images/rd.jpg" alt="Recurring Deposits" title="Recurring Deposits" id="wows1_3"/></li>
						<li><img src="/ttcs/view/data1/images/ml.jpg" alt="Medical Loans" title="Medical Loans" id="wows1_4"/></li>
						<li><img src="/ttcs/view/data1/images/wl.jpg" alt="Wedding Loans" title="Wedding Loans" id="wows1_5"/></li>
						<li><img src="/ttcs/view/data1/images/el.jpg" alt="Education Loans" title="Education Loans" id="wows1_6"/></li>
						</ul></div>
						<div class="ws_bullets" ><div>
						<a href="#" title="TTCS"><img src="data1/tooltips/bank.jpg" alt="TTCS"/>1</a>
						<a href="#" title="Non Recurring Deposits"><img src="/ttcs/view/data1/tooltips/savings.jpg" alt="Non Recurring Deposits"/>2</a>
						<a href="#" title="Fixed Deposits"><img src="/ttcs/view/data1/tooltips/fd.jpg" alt="Fixed Deposits"/>3</a>
						<a href="#" title="Recurring Deposits"><img src="/ttcs/view/data1/tooltips/rd.jpg" alt="Recurring Deposits"/>4</a>
						<a href="#" title="Medical Loans"><img src="/ttcs/view/data1/tooltips/ml.jpg" alt="Medical Loans"/>5</a>
						<a href="#" title="Wedding Loans"><img src="/ttcs/view/data1/tooltips/wl.jpg" alt="Wedding Loans"/>6</a>
						<a href="#" title="Education Loans"><img src="/ttcs/view/data1/tooltips/el.jpg" alt="Education Loans"/>7</a>
						</div></div>
						
							<div class="ws_shadow" style="width: 100%;height: 200px;"></div>
							</div>
							<script type="text/javascript" src="/ttcs/view/engine1/wowslider.js"></script>
							<script type="text/javascript" src="/ttcs/view/engine1/script.js"></script>
					</td>
					</tr>
					<tr>
						<td style="padding-top: 0px; padding-right: 0px;padding-left: 55px;padding-bottom: 0px; width:100%;" >
							<div style="background-color: white;margin-left: 35px;margin-right: -6px;">
								<img src="/ttcs/view/images/mainpage.png" width="32%" style="border-right: 5px solid #B40404;border-bottom: 2px solid #B40404; ">
								<img src="/ttcs/view/images/photo/Sec1_1.png" width="32%" style="border-right: 5px solid #B40404;border-bottom: 2px solid #B40404; ">
								<img src="/ttcs/view/images/photo/Sec1_2.png" width="32%" style="border-bottom: 2px solid #B40404; ">

							
							</div>
						</td>
					</tr>
					</table>
  			</td>
  			
  			<td width="19%" valign="top" >
				<table>
					<tr>
						<td valign="top" style="border:2px solid #E01F41;border-radius:25px; float : left; height: 100px;background-color: white; width: 250">
							<form:form commandName="userAuthenticationCommand" id = "userAuthenticationForm" action="userAuthentication.spr" method="POST" >
							<DIV align="center" id="loginDivId" >
							    <table style="border-collapse: collapse;"  align ="center" >
							    	<tr>
							    		<td colspan="2" align="center">
							    			<label  style="color: #B40404;font-weight: bold;"><center><U>Customer Login</U></center></label>
							    		</td>
							    	</tr>
									<tr>
										<td>&nbsp;&nbsp;&nbsp;<label  style="font-weight: bold;font-size: small;">Customer Id : </label></td>
										<td >
											&nbsp;<input type="text" id="loginUserId" name="loginUserId" style="height: 20px;width:100px;">
										</td>
									</tr>
									<tr>
										<td >&nbsp;&nbsp;&nbsp;<label style="font-weight: bold;font-size: small;">Password : </label></td>
										<td >
											&nbsp;<input type="password" id="loginPasswordId" name="loginPasswordId" style="height: 20px;width:100px;">
										</td>
									</tr>
									
									<tr>
										<td colspan="2" align="center">
											<center><input type="submit" value= " " id="loginBtnId"  style="background-image: url('/ttcs/view/images/login_butn.png');border: none;width:73px;height: 30px;" onclick="fnSubmitLogin()"></center>
										</td>
										
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</DIV>
							</form:form>
						</td>
					</tr>
					<tr>
						<td valign="top" style="border:2px solid #E01F41;border-radius:25px;float : left; height: 200px;background-color: white; width: 250">
							<img src="/ttcs/view/images/photo/photohdr.png" alt="" height="80px" width="250" >
							<marquee direction="up" vspace="0" scrolldelay="200">
							<div id="photoDiv" align="center" >					    										
								<img src="/ttcs/view/images/photo/photo1.png" alt="" height="100" width="85"> 
								<img src="/ttcs/view/images/photo/photo2.png" alt="" height="100" width="85"><br>
								<img src="/ttcs/view/images/photo/photo3.png" alt="" height="100" width="85">
								<img src="/ttcs/view/images/photo/photo4.png" alt="" height="100" width="85"><br>
								<img src="/ttcs/view/images/photo/photo5.png" alt="" height="100" width="85">
								<img src="/ttcs/view/images/photo/photo6.png" alt=""  height="100" width="85"><br>
								
					
					
							</div>
							</marquee>
						</td>
					</tr>
					<tr>
						<td valign="top" style="border:2px solid #E01F41;border-radius:25px;float : left; height: 200px;background-color: white; width: 250">
							
							<div id="photoDiv" align="center" >					    										
							<div style="width:98%;margin:2px;">&nbsp;&nbsp;<U style="color:#ff9900;"><b style="color: #B40404"> Latest News</b></U></div><br>	
							<A href="javascript:displayHome();" style="text-decoration: none;"><img src="/ttcs/view/images/arrowmark.png" height="8"/><b>Oct 2013 Meeting Summary</b></A> <br>
							&nbsp;&nbsp;<A href="javascript:displayHome();" style="text-decoration: none;"><img src="/ttcs/view/images/arrowmark.png" height="8"/><b>2012 Annual Meeting Summary</b></A> 
							
							</div>
							
						</td>
					</tr>
					<tr>
						<td valign="top" style="border:2px solid #E01F41;border-radius:25px;float : left; height: 200px;background-color: white; width: 250">
							
							<div id="photoDiv" align="center" >					    										
							<div style="width:98%;margin:2px;">&nbsp;&nbsp;<U style="color:#ff9900;"><b style="color: #B40404"> Donars</b></U></div><br>	
								<img src="/ttcs/view/images/photo/photo7.png" alt=""  height="100" width="85">
								<img src="/ttcs/view/images/photo/photo8.png" alt=""  height="100" width="85">
							</div>
							
						</td>
					</tr>
				</table>
				
			</td>
  		</tr>
  	</table>
   </div>
	
		
  </body>
</html>
