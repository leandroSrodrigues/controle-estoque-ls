<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/teste.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>



</head>
<body>








	<div class="container">
		<br>

		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header>

						<div class="imgcontainer">
							<img src="<%=request.getContextPath()%>/resources/img/avatar.jpg"
								alt="Avatar" class="avatar">
						</div>
					</header>
					<article class="card-body">
						<form action="efetuarLogin" method="post" class="register-form">
							<div class="form-group">
								<label for="usr">Usuário:</label> 
								<input type="text" name="login" value="${usuario.login}"	class="form-control" id="usr">
							</div>
							<div class="form-group">
								<label for="pwd">Senha:</label> 
								<input type="password" name="senha" value="${usuario.senha}" class="form-control" id="pwd">
							</div>
							


							<!-- form-group end.// -->
							<div class="form-group">
								<button class="btn btn-success btn-block">Entrar</button>
							</div>

							<label> <input type="checkbox" checked="checked"
								name="remember"> Lembre-me
							</label>

							<div class="container" style="background-color: #f1f1f1">
								<input class="btn btn-danger" type="reset" value="Cancelar">
								<span class="psw" >Esqueceu a <a href="#">senha?</a></span>
							</div>
							<!-- form-group// -->
						</form>


						
						</form>
					


	</div>
	<!--container end.//-->



</body>
</html>