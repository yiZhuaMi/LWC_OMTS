<%@page import="operator.Operator"%>
<%@ page language="java" import="java.util.*" import="model.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

    //Film result_film=(Film)session.getAttribute("result_film");
	 
	  
 	ArrayList<Order> order_lsit = (ArrayList<Order>)request.getAttribute("order_lsit");

 	String username = String.valueOf(session.getAttribute("username"));
	
 	 	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/loadJson.js"></script>

    <script src="dist/js/bootstrap.min.js"></script>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="schedule.css" />    
    <link rel="stylesheet" type="text/css" href="home.css" />
    


</head>
<body>

	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul class="nav nav-tabs"  style="background-color:#8000C3;">
							
				<li><img onclick="window.location.href='home.jsp'" src="image/水印手写.png" alt="" width="80" height="42" /></li>
		  		<li><a href="home.jsp">主页</a></li>
		  		<li><a href="film.jsp">影片</a></li>
		  		<li><a href="cinema.jsp">影院</a></li>
		  
				<%if(username=="null")
		  		{%>	
		  			<li style="float:right" ><a href="login.jsp">登录</a></li>
		  		<%}
		  		else
		  		{%>		  				
		  		<%-- 				<li style="float:right" ><a href="logout.jsp"><%=username%></a></li>	
		  		 --%>				<li class="dropdown" style="float:right">
		  								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=username%><strong class="caret"></strong></a>
		  								<ul class="dropdown-menu" style="min-width: 50px;">
		  									<li>
		  										 <a href="#" style="color:#8000c3">我的订单</a>								
		  									</li>
		  									<li class="divider">
		  									</li>
		  									<li>
		  										 <a href="logout.jsp" style="color:#8000c3">注销</a>
		  									</li>
		  								</ul>
		  							</li>  			  			
		  				  		<%}%>		 		
		 		<!-- <li style="float:right; margin-left:2px; margin-right:10px">
					<input name="imgbtn" type="image" src="image/SButton.png" width="26" height="26" style="margin-top:8px; margin-left:6px">		 		
				</li>
		 		
		 		<li style="float:right">
		 			<input type="text" name="SKeyword" style=" border:1px #ffffff; border-radius:3px; margin-top:5px; margin-bottom:5px; width: 200px;height:32px;color:#999"  placeholder="请输入电影名称" value=""/>	
		 		</li>  -->
		 				 		
		 		
			</ul>
		</div>
	</div>			
</div>
	
	
	
	<div class="container">
																<div class="clearfix" style="margin-bottom: 40px;"></div>
	
	
																	<div class="clearfix" style="margin-bottom: 10px;"></div>
	<div class="row clearfix" style="background-color:#FFFFFF;">
		<div class="col-md-12 column">
																		<div class="clearfix" style="margin-bottom: 20px;"></div>
			<table class="table" id="mytable">
				<thead>
					<tr>
						<th>
							电影名称
						</th>
						<th>
							放映厅
						</th>
						<th>
							座位
						</th>
						<th>
							时间
						</th>
						<th>
							时间
						</th>
						<th>
							价格
						</th>
					</tr>
				</thead>
				<tbody>
					<%if(order_lsit.size()!=0)
			{%>
				
				<%for(int i = 0;i<order_lsit.size();i++)
				{%>
						
						<tr>
						<td><%=order_lsit.get(i).title()%></td> 
						<td><%=order_lsit.get(i).hall()%></td> 
						<td><%=order_lsit.get(i).seat()%></td> 
						<td><%=order_lsit.get(i).play_datetime()%></td> 
						<td><%=order_lsit.get(i).play_date()%></td> 
						<td><%=order_lsit.get(i).price()%></td> 
			   		   </tr>
		   		   
	   		   <%}}%>
				</tbody>
			</table>
		</div>
	</div>
</div>
	
	
</body>

<script language="javascript">
	window.onload=function showtable()
	{
		var tablename=document.getElementById("mytable");
		var li=tablename.getElementsByTagName("tr");
		for (var i=0;i<=li.length;i++)
		{
			if (i%2==0)
			{
				li[i].style.backgroundColor="#F1EDF6";
			}
			else 
			li[i].style.backgroundColor="#FFFFFF";
		}
	}
</script>

</html>