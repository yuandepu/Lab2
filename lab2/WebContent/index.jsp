<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="js\bootstrap.min.js"></script>

	<style type="text/css">
	body{
		background-image:url(4.jpg);
		background-size:100% 100%;
		}
	</style>
</head>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<a id="modal-383435" href="#modal-container-383435" role="button" class="btn" data-toggle="modal">查询作家</a>			
			<div class="modal fade" id="modal-container-383435" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header"> 
							<h4 class="modal-title" id="myModalLabel">
								输入作家名
							</h4>
						</div>
						<div class="modal-body">
							<s:form action="Search">
					        <s:textfield name="username"/><s:submit value="查询"/>
					    	</s:form>
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
						</div>
					</div>
				</div>	
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron">
				<h1>
					你好，欢迎来到图书管理系统
				</h1>
				<p>
					在这里您可以进行图书和作者的添加，也可以将作者的图书进行修改或删除，如果操作不合规范，有可能会显示“failed”页面，如果成功则会显示“success”页面。
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="Gotoadd">添加图书</a>
				</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>