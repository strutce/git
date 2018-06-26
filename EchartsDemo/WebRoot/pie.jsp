<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'pie.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="echarts.min.js" type="text/javascript"></script>

</head>

<body>
	<div id="pie" style="width:300px;height:300px;"></div>
</body>
</html>
<script type="text/javascript">
	window.onload = function() {
		var vdate = [ {
			value : 1,
			name : "苹果"
		}, {
			value : 2,
			name : ""
		} ];
		var id = document.getElementById("pie")
		var chart = echarts.init(id);
		option = {
			title : {},
			legend : {
				orient : 'vertical',
				x : 'left',
				data : [ "苹果", "梨" ]
			},
			series : [ {
				name : '',
				type : 'pie',
				radius : [ '80%', '88%' ],
				avoidLabelOverlap : false,
				label : {
					normal : {
						 fontSize: '15',
		                 position: 'center',
		                 fontWeight: 'bold'
					}
				},
				data : vdate
			} ]
		};

		chart.setOption(option);
	}
</script>