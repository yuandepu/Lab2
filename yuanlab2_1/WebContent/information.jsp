<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="js\bootstrap.min.js"></script>
	<style type="text/css">
	body{
		background-image:url(7.jpg);
		background-size:100% 100%;
		}
	</style>
</head>
<body>
    <h1 align="center" style="text-align:center">
        <s:property value="username" />详细信息
    </h1>
    
<table border="1" align="center">
<tr>
    <th>编号</th>
	<th>姓名</th>
	<th>年龄</th>
	<th>国家</th>
<tr>
    <%List<String> list0 = (List<String>)session.getAttribute("list0");
    for (int i = 0; i < list0.size(); i++) 
    {
  		out.print("<td align=\"center\">"+list0.get(i)+"</td>");
	} %>
</tr>
</table>

<h1 align="center" style="text-align:center">书籍详细信息</h1>

<table border="1" align="center">
<tr>
    <th>ISBN</th>
    <th>书名</th>
    <th>作者编号</th>
    <th>出版社</th>
    <th>出版日期</th>
    <th>价格</th>
<tr>
		<%List<String> list = (List<String>)session.getAttribute("list");
	    for (int i = 0; i < list.size(); i+=6) 
	    {
		    out.print("<td align=\"center\">"+list.get(i)+"</td>");
		    out.print("<td align=\"center\">"+list.get(i+1)+"</td>");
		    out.print("<td align=\"center\">"+list.get(i+2)+"</td>");
		    out.print("<td align=\"center\">"+list.get(i+3)+"</td>");
		    out.print("<td align=\"center\">"+list.get(i+4)+"</td>");
		    out.print("<td align=\"center\">"+list.get(i+5)+"</td>");
		    out.print("<div class=\"container\">"
		    		+"<div class=\"row clearfix\">"
						+"<div class=\"col-md-12 column\">"
							+"<div class=\"btn-group\">"
								 +"<button class=\"btn btn-default\">功能</button> <button data-toggle=\"dropdown\" class=\"btn btn-default dropdown-toggle\"><span class=\"caret\"></span></button>"
								+"<ul class=\"dropdown-menu\">"
									+"<li>"
										 +"<a href=Gotoedit?isbn="+list.get(i)+">修改</a>"
									+"</li>"
									+"<li>"
										 +"<a href=Delete?isbn="+list.get(i)+">删除</a>"
									+"</li>"
									+"<li>"
										 +"<a href=Login>返回主页</a>"
								+"</ul>"
							+"</div>"
						+"</div>"
					+"</div>"
				+"</div>");
		}%>

</tr>
</body>
</html>