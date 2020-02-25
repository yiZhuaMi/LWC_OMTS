<%@page import="operator.Operator"%>
<%@ page language="java" import="java.util.*" import="model.Film" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

/* 	String username = String.valueOf(session.getAttribute("username"));

	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; */
/* 	
	Vector<Film> filmlist=new Vector<Film>();
	filmlist = (Vector<Film>)request.getAttribute("filmInfo");	
 	
	System.out.println(filmlist.get(0));
	 */
	 
	 Vector<Film> filmlist_p=new Vector<Film>();
	 Vector<Film> filmlist_i=new Vector<Film>();
	 
	 Film result_film=(Film)session.getAttribute("result_film");

	 
	 Operator op1 = new Operator();
	 Operator op2 = new Operator();
	 
	 filmlist_p = op1.searchFilmDisplaying();
	 
	 filmlist_i= op2.searchFilmIncoming();
	 
	 
	 String username = String.valueOf(session.getAttribute("username"));


	 	  
	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>YiZhua影城</title>


	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/loadJson.js"></script>

    <script src="dist/js/bootstrap.min.js"></script>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="home.css" />
    
<style>

.nav-tabs
 {
	border-bottom: 0px solid #ddd;
}
.nav nav-tabs
{
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #ffffff;
}



.rb
{
	float:right;
}


.span12 li a 
{
   display: block;
    color: #ffffff;
    text-align: center;
    /* padding: 24px 60px; /*方块*/ */
    text-decoration: none;
    transition:0.25s;
    border-radius:0px 0px 0 0;
}

.span12 li a:hover 
{
    background-color: #ffffff;
    color: #c131e6;
    border-color:tranparent;
}


#white
{
	background-color:#ffffff;
}


</style>

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
	<div class="row clearfix">
		<div class="col-md-2 column" id="white" style="padding-bottom:21%;padding-left:4%;">
			<h5>
				正在热映
			</h5>
		
			<ol>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(0).title%>"><%=filmlist_p.get(0).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(1).title%>"><%=filmlist_p.get(1).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(2).title%>"><%=filmlist_p.get(2).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(3).title%>"><%=filmlist_p.get(3).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(4).title%>"><%=filmlist_p.get(4).title%></a>
				</li>
				
			</ol>
		</div>
		<div class="col-md-10 column">
			<div class="row clearfix">
				<div class="col-md-4 column">
					<img alt="140x140" src="<%=result_film.poster%>" class="img-thumbnail"/>
				</div>
				<div class="col-md-8 column" id="white" style="padding-bottom:1.5%;">
					<h1 class="text-error text-left">
						<%=result_film.title%>
					</h1>
										                      <div class="clearfix" style="margin-bottom: 20px;"></div>
										                      
										                      
					<div class="row clearfix">
						<div class="col-md-1 column">
							 <span class="label label-default">标签</span>
						</div>
						<div class="col-md-1 column">
							 <span class="label label-default">标签</span>
						</div>
						<div class="col-md-10 column">
						</div>
					</div>
					                                          <div class="clearfix" style="margin-bottom: 40px;"></div>

					<dl class="dl-horizontal" style="margin-left:-70px;">
						<dt>
							【导演】
						</dt>
						<dd>
							<%=result_film.dir%>
						</dd>
						<dt>
							【演员】
						</dt>
						<dd>
							<%=result_film.act%>
						</dd>
						<dt>
							【上映日期】
						</dt>
						<dd>
							<%=result_film.year%>
						</dd>
						<dt>
							【简介】
						</dt>
						<dd>
							<%=result_film.info%>
						</dd>
					</dl>
					<div class="row clearfix" >
						<div class="col-md-1 column" style="padding-top:12%;"><!-- 高度 -->
							 <button type="button" onclick="window.location.href='/LWC_OMTS/schedule?movie_id=<%=result_film.movie_id%>'" class="btn btn-danger" >购票</button>
						</div>
						<div class="col-md-1 column" style="padding-top:12%; margin-left:10px;">
							 <button type="button" class="btn btn-warning">收藏</button>
						</div>
						<div class="col-md-10 column">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
														    	<div class="clearfix" style="margin-bottom: 40px;"></div>
	
	<div class="row clearfix">
		<div class="col-md-2 column" id="white" style="padding-bottom:21%;padding-left:4%;">
			<h5>
				即将上映
			</h5>
		
			<ol>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(0).title%>"><%=filmlist_i.get(0).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(1).title%>"><%=filmlist_i.get(1).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(2).title%>"><%=filmlist_i.get(2).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(3).title%>"><%=filmlist_i.get(3).title%></a>
				</li>
				<li>
         		<a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(4).title%>"><%=filmlist_i.get(4).title%></a>
				</li>
			</ol>
		</div>
		<div class="col-md-10 column" id="white" style="margin-left:0px;" >
		<h3>影片详情</h3>
			<p>
				<%= result_film.info %>托尼·史塔克（小罗伯特·唐尼饰）出生在纽约一个富豪家庭，从小衣来伸手饭来张口的他，并未像所有的纨绔子弟那般只知道享乐胡闹。天生聪慧的史塔克却是个出奇的天才，17岁毕业于麻省理工大学电力工程系，并以傲人的成绩成功找到了自己的社会定位——其家族企业史塔克军火公司的新老板。父母的不幸去世反而更激发了托尼事业的前进动力。21岁时便开始掌控数百亿财产的他，逐渐确立了史塔克公司作为美军第一军火供应商的雄厚地位。不过托尼傲慢自大的性格以及为达到目的不择手段的做法常常为自己找来很多麻烦。还好，他身边还有一个精明能干、性感迷人的女助手维吉尼亚·波茨（格温妮斯·帕特洛饰）时刻给自己无微不至的关怀和帮助。	
			</p>
			<br>
		<h3>剧照</h3>
			<img onclick="window.location.href='index.jsp'" width="945" style="Margin:0 auto;" alt="" src="image/juzhao1.jpg" />
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>
</div>			


</body>
</html>