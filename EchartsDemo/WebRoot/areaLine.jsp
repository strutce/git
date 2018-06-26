<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'areaLine.jsp' starting page</title>
    
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
	window.onload = function() {
		areaFun();
	}
	function areaFun(){
		var id = document.getElementById("area")
		var chart = echarts.init(id);
		
		var option = {
			    xAxis: {
			        type: 'category',
			        boundaryGap: false,
			        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [820, 932, 901, 934, 1290, 1330, 1320],
			        type: 'line',
			        areaStyle: {}
			    }]
			};
		chart.setOption(option);
		
	}
</script>
  </head>
  
  <body>
  <span id="area" style="width:400px;height:400px;"></span>
  </body>
</html>
