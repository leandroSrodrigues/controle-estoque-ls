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
<div class="container-fluid">
<%=request.getAttribute("mensagem")%>
	 <form action="update" method="post" > 
	 <input type="hidden" name="id" value="${produto.id}">
      <div class="row">      
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >CODIGO:</label>
               <input name="codigo" class="form-control" type="text" value="${produto.codigo}">    
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >DESCRIÇÂO</label>
               <input name="descricao" class="form-control" type="text">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >PREÇO DE CUSTO</label>
               <input name="precoCusto" class="form-control" type="text">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >PREÇO DE VENDA</label>
               <input name="precoVenda" class="form-control" type="text">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >GARANTIA</label>
               <input name="garantia" class="form-control" type="text">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >QUANTIDADE</label>
               <input name="quantidade" class="form-control" type="text">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label >IMAGEM</label>
               <input name="file" class="form-control" type="file">             
           </div>            
      </div>
      <hr>
      <div class="row">
           <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
           <button class="btn btn-default regbutton">alterar</button>
           
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
           <button class="btn btn-default logbutton">Cancelar</button>           
          </div>          
      </div>    
    </form>
</div>

</body>
</html>