<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min
.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>




	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="inicio">ESTOQUE</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="add">Cadastrar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="list">Listar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="cate">ADC.Categoria</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href=""> <i class="fa fa-user-circle-o"></i>  ${usuarioLogado.nome}</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link " href="<%=request.getContextPath()%>/sair"> <i class="fa fa-times-circle-o"></i>Sair</a>
    </li>
   
   
   
  </ul>
</nav>

</body>
</html>