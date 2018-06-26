<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'line.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" src="echarts.min.js"></script>
  </head>
  <body>
  <div id="line" style="width:500px;height:500px;"></div>
  </body>
</html>
<script type="text/javascript">
window.onload = function() {
	lineFun();
}
function lineFun(){
	var id = document.getElementById("line")
	var chart = echarts.init(id);
	option = {
		    xAxis: {
		        type: 'category',
		        data: ['a', 'b', 'c', 'd', 'e', 'f', 'g']
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [{
		        data: [15, 18, 21, 24, 19, 16, 23],
		        type: 'line'
		    }]
		};
	chart.setOption(option);
}
</script>
