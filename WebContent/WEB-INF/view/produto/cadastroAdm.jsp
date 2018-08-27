<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js">
</script>
<body>


<c:import url="menu.jsp" />

	<div class="container">
		<br>

		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header class="card-header">

					<h4 class="card-title mt-2">Cadastro de ADM</h4>
					</header>
					<article class="card-body">
					<form action="saveadm" method="post" class="register-form">
					
					
						<div class="form-row">
							<div class="col form-group">
								<label>Nome </label> <input name="nome" class="form-control"
									type="text" >
							</div>
							<!-- form-group end.// -->
							<div class="col form-group">
								<label>E-mail</label> <input name="email"
									class="form-control" type="text">
							</div>
							<!-- form-group end.// -->
						</div>
						
						<div class="form-row">
							<div class="col form-group">
								<label>Login </label> <input name="login" class="form-control"
									type="text" >
							</div>
							<!-- form-group end.// -->
							<div class="col form-group">
								<label>Senha</label> <input name="senha"
									class="form-control" type="password">
							</div>
							<!-- form-group end.// -->
						</div>
						
						
						<!-- form-group end.// -->
						<div class="form-group">
							<button class="btn btn-primary btn-block">Cadastrar</button>
						</div>
						<!-- form-group// -->
					</form>

					<small class="text-muted">Ao clicar no botão "Cadastrar",
						você está cadastrando um novo ADM.</small>
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