<%@page import="operator.Operator"%>
<%@ page language="java" import="java.util.*" import="model.Film" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

/* 	String username = String.valueOf(session.getAttribute("username"));

	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; */
/* 	
	Vector<Film> filmlist_p=new Vector<Film>();
	filmlist_p = (Vector<Film>)request.getAttribute("filmInfo");	
 	
	System.out.println(filmlist_p.get(0));
	 */
	 
	 Vector<Film> filmlist_p=new Vector<Film>();
	 Vector<Film> filmlist_i=new Vector<Film>();
	 
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
    

</head>



<body>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul class="nav nav-tabs"  style="background-color:#8000C3">
							
<!-- 				<li><a href="home.jsp" style="color:#ffffff ; border-radius:0px 0px 0 0;">logo</a></li>-->	
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
								 <a href="myOrder" style="color:#8000c3">我的订单</a>								
							</li>
							<li class="divider">
							</li>
							<li>
								 <a href="logout.jsp" style="color:#8000c3">注销</a>
							</li>
						</ul>
					</li>  			  			
		  		<%}%>
		 		<!-- <li style="float:right"><a href="register.jsp">注册</a></li>
		 		
		 		<li style="float:right; margin-left:2px; margin-right:10px">
					<input name="imgbtn" type="image" src="image/SButton.png" width="26" height="26" style="margin-top:8px; margin-left:6px">		 		
				</li>
		 		
		 		<li style="float:right">
		 			<input type="text" name="SKeyword" style=" border:1px #ffffff; border-radius:3px; margin-top:5px; margin-bottom:5px; width: 200px;height:32px;color:#999"  placeholder="请输入电影名称" value=""/>	
		 		</li>  -->
		 				 		
		 		
			</ul>
			
			
			
			
			<div class="carousel slide" id="carousel-510206">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-510206">
					</li>
					<li data-slide-to="1" data-target="#carousel-510206">
					</li>
					<li data-slide-to="2" data-target="#carousel-510206">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img onclick="window.location.href='/LWC_OMTS/filmInfo?title=复仇者联盟3：无限战争'" style="Margin:0 auto;" alt="" src="image/11.png" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img onclick="window.location.href='/LWC_OMTS/filmInfo?title=巴霍巴利王2：终结'" style="Margin:0 auto;" alt="" src="image/77.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img onclick="window.location.href='/LWC_OMTS/filmInfo?title=路过未来'" style="Margin:0 auto;" alt="" src="image/44.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-510206" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-510206" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>



    



<div class="box">
      <div class="head">
         <span>正在热映</span>
         <a href="#">更多></a>
      </div>
  <!-- 图片内容 -->  
  <ul>
    <li>
      <div class="deatil">
         <h2><%=filmlist_p.get(0).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(0).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_p.get(0).poster%>" width="180px" height="240px" alt=""/>
    </li>
    

    <!--第二个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_p.get(1).title %></h2>
          <p>一句话简介</p>         
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(1).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_p.get(1).poster%>" width="180px" height="240px" alt=""/>
    </li>

      <!--第3个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_p.get(2).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(2).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_p.get(2).poster%>" width="180px" height="240px" alt=""/>
    </li>

      <!--第4个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_p.get(3).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(3).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_p.get(3).poster%>" width="180px" height="240px" alt=""/>
    </li>


      <!--第5个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_p.get(4).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_p.get(4).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_p.get(4).poster%>" width="180px" height="240px" alt=""/>
    </li>
    
     </ul>  
  </div>
  
  
  
  
  
  
  
  
  
  
  
  <div class="box" >
      <div class="head">
         <span>即将上映</span>
         <a href="#">更多></a>
      </div>
  <!-- 图片内容 -->  
  <ul>
    <li>
      <div class="deatil">
         <h2><%=filmlist_i.get(0).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(0).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_i.get(0).poster%>" width="180px" height="240px" alt=""/>
    </li>

    <!--第二个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_i.get(1).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(1).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_i.get(1).poster%>" width="180px" height="240px" alt=""/>
    </li>

      <!--第3个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_i.get(2).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(2).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_i.get(2).poster%>" width="180px" height="240px" alt=""/>
    </li>

      <!--第4个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_i.get(3).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(3).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_i.get(3).poster%>" width="180px" height="240px" alt=""/>
    </li>


      <!--第5个图片-->
  <li>
      <div class="deatil">
         <h2><%=filmlist_i.get(4).title %></h2>
         <p>一句话简介</p>
         <a href="/LWC_OMTS/filmInfo?title=<%=filmlist_i.get(4).title%>">点击进入</a>
      </div>
      <img src="<%=filmlist_i.get(4).poster%>" width="180px" height="240px" alt=""/>
    </li>
    
     </ul>  
  </div>


</body>
</html>