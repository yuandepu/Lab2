<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="js\bootstrap.min.js"></script>
	<style type="text/css">
	body{
		background-image:url(8.jpg);
		background-size:100% 100%;
		}
	</style>
</head>
<body>
    <h1>
        <s:property value="username" />作品：
    </h1>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="panel-group" id="panel-729965">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-729965" href="#panel-element-454023"><center>书籍名称</center></a>
					</div>
					<div id="panel-element-454023" class="panel-collapse collapse">
						<div class="panel-body">
							<table border="1" align="center">
						    <%
						    List<String> list = (List<String>)session.getAttribute("list");
						    String username = session.getAttribute("username").toString();
						    for (int i = 0; i < list.size(); i++) 
						    {
						    	out.print("<td align=\"center\"><a href=Information?title="+list.get(i)+"&username="+username+">"+list.get(i)+"</td>");
						    }
						    %>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<a href=Login><button type="button">返回主页</button></a>
</body>
</html>