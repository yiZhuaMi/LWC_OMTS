<%@page import="operator.Operator"%>
<%@ page language="java" import="java.util.*" import="model.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

    Film result_film=(Film)session.getAttribute("result_film");
	
	Schedule result_schedule = (Schedule)request.getAttribute("result_schedule");
	  
/*  	ArrayList<Schedule> sch_lsit = (ArrayList<Schedule>)request.getAttribute("sch_lsit");
 */
	String username = String.valueOf(session.getAttribute("username"));
 	
	String selectticket_data = String.valueOf(request.getAttribute("selectticket_data"));

	

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
    
    <link rel="stylesheet" type="text/css" href="confirm.css" />    
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
		  										 <a href="myOrder.jsp" style="color:#8000c3">我的订单</a>								
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
							放映时间
						</th>
						<th>
							放映厅
						</th>
						<th>
							座位
						</th>
						<th>
							票价
						</th>
					</tr>
				</thead>
				<tbody>
					
						<tr>
						<td><%=result_film.title%></td> 
						<td><%=result_schedule.Play_time()%></td> 
						<td><%=result_schedule.Hall_id()%></td> 
						<td style="color:#ff5353;" id="showticket"></td> 
						<td>39.8</td> 
			   		   </tr>
		   		   
				</tbody>
			</table>			
			
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						 <a id="modal-804594" href="#modal-container-804594" role="button" class="confirm_button" data-toggle="modal">确认购票</a>
						
						<div class="modal fade" id="modal-container-804594" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" id="myModalLabel">
											支付宝扫码
										</h4>
									</div>
									<div class="modal-body" style="text-align: center">
										<img alt="" src="image/shouqian.JPG" width="350px" height="350px" />
									</div>
									<div class="modal-footer">
										 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
										 <button type="button" class="btn btn-primary" 
										 onclick="window.location.href='/LWC_OMTS/creatOrder?schedule_id=<%=result_schedule.Schedule_id()%>&seat=<%=selectticket_data%>'">
										 已支付</button>
									</div>
								</div>
								
							</div>
							
						</div>
						
					</div>
				</div>
	</div>
	
	
</body>

<script language="javascript">
	window.onload=function showtable()
	{
/* 		var tablename=document.getElementById("mytable");
		var li=tablename.getElementsByTagName("tr"); */
		var selectticket_data = window.location.search.split('=')[1].split('&')[0].split(",");
		var msg = '';
		
/* 		for (var i=0;i<=li.length;i++)
		{
			if (i%2==0)
			{
				li[i].style.backgroundColor="#F1EDF6";
			}
			else 
			li[i].style.backgroundColor="#FFFFFF";
		} */

		selectticket_data.forEach(function(a, b) {
			var spmsg = a.split('_')[0] + '排' + a.split('_')[1] + '座';
			msg = msg + ' ' + spmsg;  
		})
		$('#showticket').html(msg);
	}
</script>

</html>