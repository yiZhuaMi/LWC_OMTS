<%@page import="model.Schedule"%>
<%@page import="operator.Operator"%>
<%@ page language="java" import="java.util.*" import="model.Film" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%

    Film result_film=(Film)session.getAttribute("result_film");
	 
	Schedule result_sch = (Schedule)request.getAttribute("result_sch");
	
	String username = String.valueOf(session.getAttribute("username"));

	String result_seatsrc = String.valueOf(request.getAttribute("result_seatsrc"));
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>在线选座</title>
    
        <meta name="keywords" content="jQuery在线选座,jQuery选座系统" />
        <meta name="description" content="jquery.seat-charts是一款适合电影票、高铁票的在线选座插件。" />
        <link rel="stylesheet" type="text/css" href="js/jq22.css" />


	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/loadJson.js"></script>

    <script src="dist/js/bootstrap.min.js"></script>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="js/jquery.seat-charts.min.js"></script>
    
    
    
    <link rel="stylesheet" type="text/css" href="seat.css" />
    
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
		 		</li> 
		 				 --> 		
		 		
			</ul>
		</div>
	</div>			
</div>

          <div class="container">
          <h2 class="title">在线选座</h2>
            <div class="demo clearfix">
                <!---左边座位列表----->
                <div id="seat_area">
                    <div class="front">屏幕</div>					
                </div>
                <!---右边选座信息----->
                <div class="booking_area">
                    <p>电影：<span><%=result_film.title%></span></p>
                    <p>时间：<span><%=result_sch.Play_date()%> <%=result_sch.Play_time()%></span></p>
                    <p>座位：</p>
                    <ul id="seats_chose"></ul>
                    <p>票数：<span id="tickects_num">0</span></p>
                    <p>总价：<b>￥<span id="total_price">0</span></b></p>
<%--                     <input type="button" class="btn" onclick="window.location.href='/LWC_OMTS/order?sid=<%=result_sch.Schedule_id()%>&        %>'" style="padding:0px 0px;" value="确认购票"/>
 --%>
                     <input type="button" class="btn" style="padding:0px 0px;" value="确认购票"/>
                     <div id="legend"></div>
                </div>
            </div>
        </div>
<!--             <script src="js/jquery.seat-charts.min.js"></script>
 -->        
       
<script type="text/javascript" src="js/jquery.seat-charts.min.js"></script>
        <script type="text/javascript">
            var price = 100; //电影票价
            $(document).ready(function() {
                var $cart = $('#seats_chose'), //座位区
                    $tickects_num = $('#tickects_num'), //票数
                    $total_price = $('#total_price'), //票价总额
                    selectticket_num = 0 ,
                    selectticket_data = [];
                  
                var sc = $('#seat_area').seatCharts({
                    map: [//座位结构图 a 代表座位; 下划线 "_" 代表过道
                        'cccccccccc',
                        'cccccccccc',
                        '__________',
                        'cccccccc__',
                        'cccccccccc',
                        'cccccccccc',
                        'cccccccccc',
                        'cccccccccc',
                        'cccccccccc',
                        'cccccccccc'
                    ],
                    naming: {//设置行列等信息
                        top: false, //不显示顶部横坐标（行） 
                        getLabel: function(character, row, column) { //返回座位信息 
                            return column;
                        }
                    },
                    legend: {//定义图例
                        node: $('#legend'),
                        items: [
                            ['c', 'available', '可选座'],
                            ['c', 'unavailable', '已售出']
                        ]
                    },
                    click: function() {
                    
                    		if (this.status() == 'available') { //若为可选座状态，添加座位
                    			if(selectticket_num < 2) {
                    				$('<li>' + (this.settings.row + 1) + '排' + this.settings.label + '座</li>')
                                    .attr('id', 'cart-item-' + this.settings.id)
                                    .data('seatId', this.settings.id)
                                    .appendTo($cart);
                            		$tickects_num.text(sc.find('selected').length + 1); //统计选票数量
                            		$total_price.text(getTotalPrice(sc) + price);//计算票价总金额
                           			selectticket_num ++;
                           			selectticket_data.push(this.settings.row + 1 + '_' + this.settings.label);

                            		return 'selected';
                    			}else {
                                    return 'available';

                    			}
                                
                            } else if (this.status() == 'selected') { //若为选中状态
                                $tickects_num.text(sc.find('selected').length - 1);//更新票数量
                                $total_price.text(getTotalPrice(sc) - price);//更新票价总金额
                                $('#cart-item-' + this.settings.id).remove();//删除已预订座位
                                selectticket_num --;
                                
                       			selectticket_data.pop(this.settings.row + '_' + this.settings.label);
                       			
                                return 'available';
                            } else if (this.status() == 'unavailable') { //若为已售出状态
                                return 'unavailable';
                            } else {
                                return this.style();
                            }
                    	}
                });
                //设置已售出的座位
/*                  sc.get(['5_5', '5_6', '6_3', '6_4', '6_5', '6_6', '6_7', '6_4', '6_5', '6_6', '6_7']).status('unavailable');
 */ 			    
 					var k = <%=result_seatsrc%>;
                    sc.get(k).status('unavailable');

 					$('.btn').on('click' , function(e) {
            		$.ajax({
            			type: 'get',
            			url : '',//servlet dizhi
            			data: {selectticket_data : selectticket_data},
            			contentType : 'application/x-www-form-urlencoded',
            			success : function(data) {
            				console.log(data)
            			}
            		})
            		window.location.href = '/LWC_OMTS/confirm?selectticket_data=' + selectticket_data.toString() + '&' + window.location.search.split('?')[1];
            	})
            });
            function getTotalPrice(sc) { //计算票价总额
                var total = 0;
                sc.find('selected').each(function() {
                    total += price;
                });
                return total;
            }
        </script>


</body>
</html>