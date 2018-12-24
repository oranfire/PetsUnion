<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>shop</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
				function hideURLbar(){ window.scrollTo(0,1); } </script>
				
		<!-- Custom Theme files -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
		<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->  
		<link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />   
		<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
		<!-- //Custom Theme files -->
		
		<!-- font-awesome icons -->
		<link href="css/font-awesome.css" rel="stylesheet"> 
		<!-- //font-awesome icons -->
		
		<!-- js -->
		<script src="js/jquery-2.2.3.min.js"></script> 
		<script src="js/owl.carousel.js"></script>
		<!-- //js --> 
		
		<!-- web-fonts -->
		<link href='http://fonts.useso.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Offside' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
		<!-- web-fonts --> 
		
		<!-- scroll to fixed--> 
		<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
		<script>
			$(document).ready(function() {

				// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

				$('.header-two').scrollToFixed();   
				// previous summary up the page.

				var summaries = $('.summary');
				summaries.each(function(i) {
					var summary = $(summaries[i]);
					var next = summaries[i + 1];

					summary.scrolltofixed({
						margintop: $('.header-two').outerheight(true) + 10, 
						zindex: 999
					});
				});
			});
		</script>
		<!-- //scroll to fixed--> 
		
		<!-- start-smooth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>	
		<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
		</script>
		<!-- //end-smooth-scrolling -->
		
		<!--flex slider-->
		<script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<script>
			// Can also be used with $(document).ready()
			$(window).load(function() {
			  $('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			  });
			});
		</script>
		<!--flex slider-->

		<!-- smooth-scrolling-of-move-up -->
		<script type="text/javascript">
			$(document).ready(function() {
	
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
		
				$().UItoTop({ easingType: 'easeOutQuart' });
		
			});
		</script>
		<!-- //smooth-scrolling-of-move-up --> 
		
		<!-- smooth-scrolling-of-move-up -->
		<script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		<!-- //smooth-scrolling-of-move-up -->
		
		<!-- the jScrollPane script -->
		<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
		<!-- //the jScrollPane script -->
		
		<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
		<!-- the mousewheel plugin --> 
		
		<style type="text/css">
			table.hovertable {
				font-family: verdana,arial,sans-serif;
				color:#333333;
				border-width: 1px;
				border-color: #999999;
				border-collapse: collapse;
				width: 100%;
			}
			table.hovertable th {
				background-color:#c3dde0;
				border-width: 1px;
				font-size:15px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
				text-align:center;
			}
			table.hovertable tr {
				background-color:#d4e3e5;
				font-size:12px;
			}
			table.hovertable td {
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
			}
		</style>
		
	</head>
	
<body>
	<!-- header -->
	<div class="header">
		<div class="uniform-header"><!--header-one--> 
			<div class="uniform-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> 我的账号<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.html">登录 </a></li> 
							<li><a href="signup.html">注册</a></li> 
							<li><a href="login.html">我的订单</a></li>  
						</ul> 
					</li> 
					<li class="dropdown head-dpdn">
						<a href="help.html" class="dropdown-toggle"><i class="fa fa-question-circle" aria-hidden="true"></i> 帮助</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div> 
		</div>
		
		<div class="header-two"><!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1><a href="index.html"><span>PETS</span>union </a></h1>
					<h2>Your stores. Your friends.</h2> 
				</div>	
				<div class="header-search">
					<form method="#">
						<input type="search" id="search" placeholder="请输入宠物类型或服务类型..." required="">
						<button type="button" id="submit" class="btn btn-default" aria-label="Left Align" >
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="header-cart"> 
					<div class="my-account">
						<a href="contact.html"><i class="fa fa-map-marker" aria-hidden="true"></i> 联系我们</a>						
					</div>
					<div class="clearfix"> </div> 
				</div> 
				<div class="clearfix"> </div>
			</div>		
		</div><!-- //header-two -->
		
		<!-- return to searchShop -->
		<script type="text/javascript">
		$("button#submit").click(function (){
			var $value=document.getElementById("search").value;
			alert("您的搜索请求："+$value);
			if($value==""){
				alert("您的输入不能为空");
				return false;
			}
				
			window.location.href = "searchShop.jsp?search="+encodeURI(encodeURI($value));
			
			alert("跳转页面完成");
		});
		</script>
		<!-- return to searchShop -->
		
		<div class="header-three"><!-- header-three -->
			<div class="container">
				<div class="move-text">
					<div class="marquee" style="width:1100px;float:none;"><a href="offers.html"> 双十一萌宠PARTY，单身宠物不孤单...... <span>THU宠物护理中心开放日 </span> <span> 昌平宠物滑雪场，给您的宠物放个假吧!</span></a></div>
					<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
					<script>
					  $('.marquee').marquee({ pauseOnHover: true });
					  //@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- //header --> 
	
	<!-- shop --> 
	<div class="shop-page">
		<div class="container">
			<div class="col-md-6 single-top-left">		
				<div class="flexslider">
					 <a><img id="myimg" src="" data-imagezoom="true" width=100% alt="my image"></a>
				</div>
			</div>
			<div class="col-md-6 single-top-right">
				<br><br>	
				<h3 id="myname"></h3>
				<p id="tel"></p>
				<p id="address"></p>
				<br>
				<button type="button" id="history" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 查看历史订单</button>
				<br><br>
				<button type="button" id="data" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 门店信息管理</button>
			</div>
			<div class="clearfix"> </div> 
			
			<!-- collapse-tabs -->
			<div class="collpse tabs">
				<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									<i class="fa fa-file-text-o fa-icon" aria-hidden="true"></i> 未确认订单 <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<table class="hovertable" id="comfirm" width=1000px>
									<tr>
										<th>订单号</th><th>订单状态</th><th>顾客名</th><th>预约时间</th><th>服务类型</th><th>宠物类型</th><th>执行操作</th>
									</tr>
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 1A</td><td>Item 1B</td><td>Item 1C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 2A</td><td>Item 2B</td><td>Item 2C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 3A</td><td>Item 3B</td><td>Item 3C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 4A</td><td>Item 4B</td><td>Item 4C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 5A</td><td>Item 5B</td><td>Item 5C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									<i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> 未完成订单 <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a> 
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								<table class="hovertable" id="complete" width=1000px>
									<tr>
										<th>订单号</th><th>订单状态</th><th>顾客名</th><th>预约时间</th><th>服务类型</th><th>宠物类型</th><th>执行操作</th>
									</tr>
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 1A</td><td>Item 1B</td><td>Item 1C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 2A</td><td>Item 2B</td><td>Item 2C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 3A</td><td>Item 3B</td><td>Item 3C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 4A</td><td>Item 4B</td><td>Item 4C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
									<!-- <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
										<!-- <td>Item 5A</td><td>Item 5B</td><td>Item 5C</td><td>Item 1D</td><td>Item 1E</td> -->
									<!-- </tr> -->
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- collapse-tabs -->
	</div> 
	<!-- //shop --> 
	
	<!-- @--@ get information -->
	<script>
	function getQuery(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
	</script>
	<!-- get information -->

	<!-- @**@ load user information when enter-->
	<script type="text/javascript">
	$(document).ready(function(){
		alert("开始加载宠物店主界面！");
		
		$.ajax({
			url:"ShopDetailServlet",
			type:"post",
			data:{
				flag:encodeURI(1),
				shopName:encodeURI('<////%= session.getAttribute("Id")%>')
			},
			cache:false,
			dataType:"json",
			success:function(resp) {
				console.log(resp);
				$("#myname").text(resp.shopName);
				$("#myimg").attr("src", resp.shopImgUrl);
				$("#address").text("地址："+resp.address);
				$("#tel").text("电话："+resp.shopTel);
			}
		});
		
		$.ajax({
			url:"ShopReservationServlet",
			type:"post",
			data:{
				useId:encodeURI('<////%= session.getAttribute("Id")%>'),
				status: encodeURI(0)
			},
			cache:false,
			dataType:"json",
			success:function(resp) {
				console.log(resp);
				
				alert("开始加载未确认订单");
				
				var number=resp.length;
				var iter=0;
				while(iter<=number){
					iter=iter+1;
					
					var $tr = $("<tr></tr>");
					$tr.attr("onmouseover","this.style.backgroundColor='#ffff66';").attr("onmouseout","this.style.backgroundColor='#d4e3e5';");
					$tr.append("<td>"+ resp[iter].orderId +"</td>");
					$tr.append("<td>"+ resp[iter].Status +"</td>");
					$tr.append("<td>"+ resp[iter].shopName +"</td>");
					$tr.append("<td>"+ resp[iter].serBeginTime+" - "+resp[iter].serEndTime+"</td>");
					$tr.append("<td>"+ resp[iter].serviceType+"</td>");
					$tr.append("<td>"+ resp[iter].petsType+"</td>");
					
					var $button=$("<button>").attr("value",resp[iter].orderId).attr("id","confirm").append($("<P>").text("确认"));
					$td=$("<td>").append($button);
					$tr.append($td);
					
					$button.click(function(){
						var $value=$(this).val();
						alert("您点击了确认按钮，订单号是"+$value);
						
						$.ajax({
							url:"ReservationUpdateServlet",
							type:"post",
							data:{
								orderId: $value
							},
							cache:false,
							dataType:"json",
							success:function(resp) {
								reload();
							}
						});
					});
					
					$tr.appendTo($(".hovertable#comfirm"));
				}
				
				alert("未确认订单加载完成");
			}
		});
		
		$.ajax({
			url:"ShopReservationServlet",
			type:"post",
			data:{
				useId:encodeURI('<////%= session.getAttribute("loggedId")%>'),
				status: encodeURI(1)
			},
			cache:false,
			dataType:"json",
			success:function(resp) {
				console.log(resp);
				
				alert("开始加载未完成订单");

				var number=resp.length;
				var iter=0;
				while(iter<=number){
					iter=iter+1;
					
					var $tr = $("<tr></tr>");
					$tr.attr("onmouseover","this.style.backgroundColor='#ffff66';").attr("onmouseout","this.style.backgroundColor='#d4e3e5';");
					$tr.append("<td>"+ resp[iter].orderId +"</td>");
					$tr.append("<td>"+ resp[iter].Status +"</td>");
					$tr.append("<td>"+ resp[iter].shopName +"</td>");
					$tr.append("<td>"+ resp[iter].serBeginTime+" - "+resp[iter].serEndTime+"</td>");
					$tr.append("<td>"+ resp[iter].serviceType+"</td>");
					$tr.append("<td>"+ resp[iter].petsType+"</td>");
					
					var $button=$("<button>").attr("value",resp[iter].orderId).attr("id","confirm").append($("<P>").text("服务完成"));
					$td=$("<td>").append($button);
					$tr.append($td);
					
					$button.click(function(){
						var $value=$(this).val();
						alert("您点击了完成按钮，订单号是"+$value);
						
						$.ajax({
							url:"ReservationUpdateServlet",
							type:"post",
							data:{
								orderId: $value
							},
							cache:false,
							dataType:"jsonp",
							success:function(resp) {
								reload();
							}
						});
					});
					
					$tr.appendTo($(".hovertable#complete"));
				}
				
				alert("未完成订单加载完成");
			}
		});
		
		$(".shop-page").find("*").not("button").attr("style","border:0px;");
		
		alert("店主界面加载完成");
	});
	</script>
	<!-- //load user information when enter-->
	
	<!-- @$$@ just for test -->
	<script type="text/javascript">
	/*$(document).ready(function(){
		alert("开始加载店主界面");
	
		$("#myname").text("代达罗斯");
		$("#address").append("THU#z11");
		$("#myimg").attr("src", "images/s1.jpg");
			
		var iter=0;
		while(iter<=5){
			iter=iter+1;
			
		    var $tr = $("<tr></tr>");
			$tr.attr("onmouseover","this.style.backgroundColor='#ffff66';").attr("onmouseout","this.style.backgroundColor='#d4e3e5';");
			$tr.append("<td>"+ "item1" +"</td>");
			$tr.append("<td>"+ "item2" +"</td>");
			$tr.append("<td>"+ "item3" +"</td>");
			$tr.append("<td>"+ "item4" +"</td>");
			$tr.append("<td>"+ "item5" +"</td>");
			$tr.append("<td>"+ "item6" +"</td>");
			
			var $button=$("<button>").attr("value",123).attr("id","confirm").append($("<P>").text("确认"));
			$td=$("<td>").append($button);
			$tr.append($td);
			
			$button.click(function(){
				var $value=$(this).val();
				alert("您点击了确认按钮"+$value);
				reload();
			});	
			
			$tr.appendTo($(".hovertable#comfirm"));
		}
		
		iter=0;
		while(iter<=5){
			iter=iter+1;
			
		    var $tr = $("<tr></tr>");
			$tr.attr("onmouseover","this.style.backgroundColor='#ffff66';").attr("onmouseout","this.style.backgroundColor='#d4e3e5';");
			$tr.append("<td>"+ "item1" +"</td>");
			$tr.append("<td>"+ "item2" +"</td>");
			$tr.append("<td>"+ "item3" +"</td>");
			$tr.append("<td>"+ "item4" +"</td>");
			$tr.append("<td>"+ "item5" +"</td>");
			$tr.append("<td>"+ "item6" +"</td>");
			
			var $button=$("<button>").attr("value",123).attr("id","complete").append($("<P>").text("服务完成"));
			$td=$("<td>").append($button);
			$tr.append($td);
			
			$button.click(function(){
				var $value=$(this).val();
				alert("您点击了完成按钮"+$value);
				reload();
			});	
			
			$tr.appendTo($(".hovertable#complete"));
		}
		
		$(".shop-page").find("*").not("button").attr("style","border:0px;");
		
		alert("店主界面加载完成");
	});*/
	</script>
	<!-- //just for test -->
	
	<!-- @@ jump -->
	<script>
	$("button#history").click(function (){
		alert("你点击了查看历史订单");
		
		window.open("shopHistoryReservation.jsp");
		
		alert("新页面加载完成");
	});
	</script>
	<!-- //jump-->
		
	<!-- @@ jump -->
	<script>
	$("button#data").click(function (){
		alert("你点击了门店信息管理");
		
		window.open("shopDetailUpdate.jsp");
		
		alert("新页面加载完成");
	});
	</script>
	<!-- //jump-->
	
	<!-- footer-top -->
	<div class="w3agile-ftr-top">
		<div class="container">
			<div class="ftr-toprow">
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div> 
					<div class="ftr-top-right">
						<h4>更便捷</h4>
						<p>不用再为爱宠找不到合适的店家而烦恼 </p>
					</div> 
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div> 
					<div class="ftr-top-right">
						<h4>更通畅</h4>
						<p>留言系统让万水千山不再是阻隔挂念的屏障 </p>
					</div> 
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div> 
					<div class="ftr-top-right">
						<h4>更诚信</h4>
						<p>用户的评价让您获知更多关于店家的信息 </p>
					</div>
					<div class="clearfix"> </div>
				</div> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //footer-top -->  		
	
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
        uniform.render();

        uniform.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) {
        			items[i].set('shipping', 0);
        			items[i].set('shipping2', 0);
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->  
	
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim --> 
	
    <script src="js/bootstrap.js"></script>
</body>
</html>