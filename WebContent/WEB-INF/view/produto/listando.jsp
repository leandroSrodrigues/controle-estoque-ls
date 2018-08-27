<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.ifpe.estoque.model.Produto"%>
<%@ page import="br.com.ifpe.estoque.model.ProdutoDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min
.js"></script>
<jsp:useBean id="dao" class="br.com.ifpe.estoque.model.ProdutoDao" />
</head>
 
 <style>
 
 .afas{
margin-left: 120px;
 }
 </style>

<body>


	<c:import url="menu.jsp" />
	<div class="afas">
	<div class="container" style="text-align: center;">
		<hr>
		<h3>Filtro Produtos</h3>
		<hr>
		<div>
			<form action="filter">
				<div class="form-row">
					<div class="col form-group">
						<label for="inputCodigo">Codigo </label> <input type="text"
							id="inputCodigo" class="form-control" name="codigo"
							>
					</div>
					<!-- form-group end.// -->
					<div class="col form-group">
						<label for="inputDescricao">Descrição</label>
						<input type ="text" id="inputDescricao" class="form-control"
							name="descricao" >
					</div>
					<!-- form-group end.// -->
				</div>

				<div class="form-group">
					<button type="reset" class="btn btn-default">&nbsp; Limpar
						&nbsp;</button>
					&nbsp;
					<button type="submit" class="btn btn-primary">&nbsp;
						Filtrar &nbsp;</button>
				</div>
			</form>
		</div>
		<hr>
		<h3>Lista Produtos</h3>
		<hr>
	</div>






	<div class="container" style="text-align: center;">
		
		<table class="table ">
			<thead>
				<tr>
					<th>Codigo</th>
					<th>Descrição</th>
					<th>Preço Custo</th>
					<th>Preço Venda</th>
					<th>Garantia</th>
					<th>Quantidade</th>
					<th>Imagem</th>
					<th>Alterar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="produto" items="${listaProduto}">
					<tr>
						<td><c:choose>
								<c:when test="${not empty produto.codigo}">
${produto.codigo}
</c:when>
								<c:otherwise>
Codigo não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.descricao}">
${produto.descricao}
</c:when>
								<c:otherwise>
Descrição não informada.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.precoCusto}">
${produto.precoCusto}
</c:when>
								<c:otherwise>
Preço não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.precoVenda}">
${produto.precoVenda}
</c:when>
								<c:otherwise>
Preço da venda não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.garantia}">
${produto.garantia}
</c:when>
								<c:otherwise>
Garantia não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.quantidade}">
${produto.quantidade}
</c:when>
								<c:otherwise>
Quantidade não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty produto.imagem}">
${produto.imagem}
</c:when>
								<c:otherwise>
Imagem não informado.
</c:otherwise>
							</c:choose></td>
						<td><a href="edit?id=${produto.id}"> <button class="btn btn-primary">Alterar</button> </a> </td>
						<td><a href="delete?id=${produto.id}"><button  class="btn btn-danger">Deletar</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>



</html>