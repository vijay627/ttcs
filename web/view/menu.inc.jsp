<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
	src="<%=request.getContextPath()%>/view/js/curvycorners.src.js"></script>
	
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

  </head>
  
  <body class=inside>
	<div id=wrapper>
	<div id=container>
	<div id=topbar>
	<img class=clarklogo alt="TTCS Logo" 
	src="/ttcs/view/images/ttcslogo.png" width="450px" height="60" style="margin-left: -150px;margin-top: 25px;">
		
	<div id=nav  >
		<ul id=navigation style="float: right;">


	  		<li><a href="deposits.jsp"><b>Admin</b></a> 
				<ul><span class="current">
					<li><a href="<%=request.getContextPath()%>/adminParamGS.spr">General Savings</a> </li>
					<li><a href="<%=request.getContextPath()%>/adminParamFD.spr">Fixed Deposit</a> </li>
					<li><a href="<%=request.getContextPath()%>/adminParamRD.spr">Recurring Deposit</a> </li>
					<li><a href="<%=request.getContextPath()%>/adminParamHL.spr">Hand Loan</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/adminParamPL.spr">Personal Loan</a> </li>
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	  		<li class="current"><a href="deposits.jsp"><b>CRM</b></a> 
				<ul><span class="current">
	    			<li><a href="<%=request.getContextPath()%>/newCustomer.spr">New Customer</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/existingCustomer.spr?customer=N">Existing Customer</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/updateCustomer.spr">Update Customer Profile</a>
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	  		<li ><a href="deposits.jsp"><b>Deposits</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="<%=request.getContextPath()%>/newGenSavings.spr">New General Savings</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/newFixedDeposits.spr">New Fixed Deposit</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/newRecurringDesposits.spr">New Recurring Deposit</a>
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li ><a href="deposits.jsp"><b>Loans</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="<%=request.getContextPath()%>/newHandLoan.spr">New Vehicle Loan</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/newPersonalLoan.spr">New Persoanl Loan</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li ><a href="deposits.jsp"><b>Insurance</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="<%=request.getContextPath()%>/newGenInsurance.spr">New General Insurance</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/newLoanInsurance.spr">New Loan Insurance</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
			<li ><a href="deposits.jsp"><b>Office Accounts</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="<%=request.getContextPath()%>/officeDepositAccount.spr">Deposit Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeLoanAccount.spr">Loan Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeInsuranceAccount.spr">Insurance Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeInterestAccount.spr">Interest Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeChargesAccount.spr">Charges Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeExpendatureAccount.spr">Expendature Account</a> </li>
	    			<li><a href="<%=request.getContextPath()%>/officeCorpusFundAccount.spr">Corpus Fund Account</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
		    	
	    	<li ><a href="deposits.jsp"><b>Calculator</b></a> 
				<ul><span class=ddtop>
	    			<li><a href="loancalc.jsp">Loan </a> </li>
     	 			<li><a href="fdcalc.jsp">Fixed Deposit </a> </li>
	    			<li><a href="rdcalc.jsp">Recurring Deposit</a> 
	    			</span><span class=ddbot></span></li>
	    		</ul>
	    	</li>
	    	
	    	<li class=nodd><a href="contactus.jsp"><b>Contact List</b></a> </li>
	    	
	
	
	</ul>	
		
	</div>	
	</div>
	<div class=clear></div>
	</div>	
	</div>
	
	
	<div id=secondarynavigation>
		
		<marquee scrolldelay="100"  direction="left" style="color: white;font-weight: bold; font-size: medium;"> Upadyaya Podhupu Sahakara Sangham   Gonegandla  Kurnool Dist - 518463   Est: 1995</marquee>
  	
   </div>
   
	
		
  </body>
</html>
