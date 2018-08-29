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
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
</script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style>
	
 .menu{
   
   background-color: #495057;
    height: 100%;
    width: 200px;
    position: fixed;
    padding-top: 30px;
 
 }
  /* links */
 .me{
 font-size: 15px;
    color: white;
    display: block;
  padding: 5px 20px;
  }
   
    /* botão sair e nome do usuário */
  .bt {
  
   margin-left: 50px;
}
 /* bordas dos link */
.d{
 border-width: medium;
    border-style: solid;
    border-color: #17a2b8;
    border-radius:50px;
        margin-bottom: 5px;
    
}

 /* foto do perfil  */
.avatarmenu{
width: 50%;
    border-radius: 50%;
}
 
  /* icone do usuário online  */
 .glyphicon-user{
 color:#2cec2c;
 }
  /* nome da empresa no menu */
 .logo{
font-size: 30px;
text-align: center;
margin-left: 25px;
color: aqua;
 }
 
</style>
	
</head>
<body>










<div class="menu">
 <label class="logo">ESTOQUE</label>
 <br>
 <br>
 <br>
<img src="<%=request.getContextPath()%>/resources/img/avatar.jpg"  class="avatarmenu bt">

<a class="me bt " href=""><span class="glyphicon glyphicon-user"></span> ${usuarioLogado.nome}</a>
<a    class="me bt" href="<%=request.getContextPath()%>/sair"><button  class="btn btn-danger fa fa-close" style=" margin-height: 200px;" >Sair</button></a>
 <br>
  
  <a class="me d" href="add"> <span class="glyphicon glyphicon-pencil"></span> Cadastrar Produto</a>
  
  <a class="me d" href="list"> <span class="glyphicon glyphicon-list-alt"></span> Listar Produtos</a>
  
  <a class="me d" href="cate"> <span class="glyphicon glyphicon-pencil"></span> ADC.Categoria</a>
  
  <a class="me d" href="listCat"> <span class="glyphicon glyphicon-pencil"></span> Listar Categoria</a>
  
   <a class="me d" href="adm"> <span class="glyphicon glyphicon-pencil"></span> Cadastrar ADM</a>
   
    <a class="me d" href="listUsu"> <span class="glyphicon glyphicon-pencil"></span> Listar Usuarios</a>
  

</div>

<div class="main">
  
</div>







</body>
</html>