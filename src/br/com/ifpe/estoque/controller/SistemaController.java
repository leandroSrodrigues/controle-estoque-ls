package br.com.ifpe.estoque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.estoque.model.CategoriaProduto;
import br.com.ifpe.estoque.model.CategoriaProdutoDao;

@Controller
public class SistemaController {

	
	@RequestMapping("olaMundoSpring")
	public String olaMundo() {
	System.out.println("Executando a lógica com Spring MVC.");
	return "olaMundo";
	}
	
	@RequestMapping("inicio")
	public String inicio1() {
	System.out.println("Executando a lógica com Spring MVC.");
	return "produto/Inicio";
	}
	
	@RequestMapping("cate")
	public String catep() {
	System.out.println("Executando a lógica com Spring MVC.");
	return "produto/cateproduto";
	}
	
	@RequestMapping("savecat")
	public String save(CategoriaProduto categoriaProduto) {
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
		dao.salvar(categoriaProduto);
		return "produto/incluirProdutoSucesso";
	}
}
