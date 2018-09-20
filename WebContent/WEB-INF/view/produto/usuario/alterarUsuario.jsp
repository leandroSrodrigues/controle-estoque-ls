<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="menu.jsp" />

	<div class="container">
		<br>

		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header class="card-header">

					<h4 class="card-title mt-2"> Alterando Usuario</h4>
					</header>
					<article class="card-body">
					<form action="updateUsu" method="post" class="register-form">
					<input type="hidden" name="id" value="${usuario.id}">
					
						<div class="form-row">
							<div class="col form-group">
								<label>Nome </label> <input name="nome" class="form-control"
									type="text" value="${usuario.nome}" >
							</div>
							<!-- form-group end.// -->
							<div class="col form-group">
								<label>E-mail</label> <input name="email"
									class="form-control" type="text" value="${usuario.email}">
							</div>
							<!-- form-group end.// -->
						</div>
						
						<div class="form-row">
							<div class="col form-group">
								<label>Login </label> <input name="login" class="form-control"
									type="text" value="${usuario.login}" >
							</div>
							<!-- form-group end.// -->
							<div class="col form-group">
								<label>Senha</label> <input name="senha"
									class="form-control" type="password" value="${usuario.senha}">
							</div>
							<!-- form-group end.// -->
						</div>
						
						
						<!-- form-group end.// -->
						<div class="form-group">
							<button class="btn btn-primary btn-block">Alterar</button>
						</div>
						<!-- form-group// -->
					</form>

					<small class="text-muted">Ao clicar no bot�o "Alterar",
						voc� est� Alterando os dados do usuario selecionado.</small>
					</form>
					</article>
					<!-- card-body end .// -->

				</div>
				<!-- card.// -->
			</div>
			<!-- col.//-->

		</div>
		<!-- row.//-->


	</div>
	<!--container end.//-->
</body>
</html>