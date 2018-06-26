<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'smoothedLine.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript">
	function smoothedFun(){
		var id=document.getElementById("smoothed");
		var chart=echarts.init(id);
		var option={
				 xAxis: {
				        type: 'category',
				        data: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期天']
				    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [20, 32, 1, 34, 90, 30, 20],
			        type: 'line',
			        smooth: true
			    }]
		};
		chart.setOption(option);
	}
	</script>
  </head>
  
  <body>
	<div id="smoothed" style="width:500px;height:400px;"></div>    
  </body>
</html>
