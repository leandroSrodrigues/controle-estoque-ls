<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/teste.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min
.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:import url="menu.jsp" />

	<div class="container">
		<br>

		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header class="card-header">

					<h4 class="card-title mt-2">Alteração do produto</h4>
					</header>
					<article class="card-body">
					<form action="update" method="post" class="register-form" enctype="multipart/form-data">
					<input type="hidden" name="id" value="${produto.id}">
						<div class="form-row">
							<div class="col form-group">
								<label>Codigo </label> <input name="codigo" class="form-control"
									type="text" value="${produto.codigo}">
							</div>
							<!-- form-group end.// -->
							<div class="col form-group">
								<label>Descrição</label> <input name="descricao"
									class="form-control" type="text" value="${produto.descricao}">
							</div>
							<!-- form-group end.// -->
						</div>
						<!-- form-row end.// -->
						<div class="form-group">
							<label>Garantia</label> <input name="garantia"
								class="form-control" type="text" value="${produto.garantia}"> <small
								class="form-text text-muted">Informe a garantia do
								produto.</small>
						</div>
						<!-- form-group end.// -->
						<div class="form-group"></div>
						<!-- form-group end.// -->
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Preço de Custo</label> <input name="precoCusto"
									class="form-control" type="text" value="${produto.precoCusto}">
							</div>
							<!-- form-group end.// -->
							<div class="form-group col-md-6">
								<label>Preço da Venda</label> <input name="precoVenda"
									class="form-control" type="text" value="${produto.precoVenda}">
							</div>
							<!-- form-group end.// -->
						</div>
						<!-- form-row.// -->
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Quantidade</label> <input name="quantidade"
									class="form-control" type="text" value="${produto.quantidade}">
							</div>
							<!-- form-group end.// -->
							<div class="form-group col-md-6">
								<label>Categoria do Produto</label> <br>
								<select id="categoriaProduto"
									name="categoriaProduto">
									<option value="">Selecione</option>
									<c:forEach items="${listaCategoriaProduto}" var="obj">
										<option value="${obj.id}"  <c:if test="${obj.id eq produto.categoriaProduto.id}">selected="selected"</c:if>>${obj.descricao}
										</option>
									</c:forEach>
								</select>

							</div>
							<!-- form-group end.// -->
						</div>
						<!-- form-row.// -->
						
						
						<!--  ainda falta fazer alteração com imagem 
						<div class="form-group">
							<label>Imagem</label> <input name="file" class="form-control"
								type="file">
						</div> -->
						
						
						<!-- form-group end.// -->
						<div class="form-group">
							<button class="btn btn-primary btn-block">Alterar</button>
						</div>
						<!-- form-group// -->
					</form>

					<small class="text-muted">Ao clicar no botão "Alterar",
						você está alterando o produto selecinado.</small>
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