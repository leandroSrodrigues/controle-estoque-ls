<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.List"%>
<%@ page import="br.com.ifpe.estoque.model.CategoriaProduto"%>
<%@ page import="br.com.ifpe.estoque.model.CategoriaProdutoDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min
.js"></script>
<jsp:useBean id="dao" class="br.com.ifpe.estoque.model.CategoriaProdutoDao" />
</head>
<style>
 
 .afas{
margin-left: 120px;
 }
 </style>
<body>

<c:import url="menu.jsp" />
	<div class="afas">
	
	
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
					<th>Funções</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="CategoriaProduto" items="${listaCategoria}">
					<tr>
						<td><c:choose>
								<c:when test="${not empty CategoriaProduto.codigo}">
${CategoriaProduto.codigo}
</c:when>
								<c:otherwise>
Codigo não informado.
</c:otherwise>
							</c:choose></td>
						<td><c:choose>
								<c:when test="${not empty CategoriaProduto.descricao}">
${CategoriaProduto.descricao}
</c:when>
								<c:otherwise>
descrição não informada.
</c:otherwise>
							</c:choose></td>

						
						<td><a href=""> <button class="btn btn-primary">Alterar</button> </a> </td>
						<td><a href=""><button  class="btn btn-danger">Deletar</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>