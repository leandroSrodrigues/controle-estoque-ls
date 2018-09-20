package br.com.ifpe.estoque.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.ifpe.estoque.model.CategoriaProduto;
import br.com.ifpe.estoque.model.CategoriaProdutoDao;
import br.com.ifpe.estoque.model.Produto;
import br.com.ifpe.estoque.model.ProdutoDao;
import br.com.ifpe.estoque.model.Usuario;
import br.com.ifpe.estoque.model.UsuarioDao;

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
	public String save(CategoriaProduto categoriaProduto, Model model) {
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
		dao.salvar(categoriaProduto);
		model.addAttribute("msg1", "Categoria cadastrada.");
		return "forward:cate";
	}
	
	@RequestMapping("/listCat")
	public String listarCategoria(Model model) {
	CategoriaProdutoDao dao = new CategoriaProdutoDao();
	List<CategoriaProduto> listaCategoria = dao.listar();
	model.addAttribute("listaCategoria", listaCategoria);
	return "produto/listarCategoria";
	}
	
	@RequestMapping("/editCat")
	public String edit(@RequestParam("id") Integer id, Model model)
	{
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
		CategoriaProduto categoriaProduto = dao.buscarPorId(id);
	model.addAttribute("categoriaProduto", categoriaProduto);
	return "produto/categoria/alterarCategoria";
	}
	
	@RequestMapping("/updateCat")
	public String update(CategoriaProduto categoriaProduto, Model model) {
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
	dao.alterar(categoriaProduto);
	model.addAttribute("mensagem", "Categoria Alterado com Sucesso !");
	return "forward:listCat";
	}
	
	@RequestMapping("/deleteCat")
	public String delete(@RequestParam("id") Integer id, Model model) {
		CategoriaProdutoDao dao = new CategoriaProdutoDao();
	dao.remover(id);
	model.addAttribute("msg", "Produto Removido com Sucesso");
	return "forward:listCat";
	}
	
	
	@RequestMapping("adm")
	public String cadastroadm() {
	System.out.println("Executando a lógica com Spring MVC.");
	return "produto/cadastroAdm";
	}
	
	@RequestMapping("saveadm")
	public String saveAdm(Usuario usuario) {
		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		return "produto/incluirProdutoSucesso";
	}

	@RequestMapping("/listUsu")
	public String listarUsuario(Model model) {
	UsuarioDao dao = new UsuarioDao();
	List<Usuario> listaUsuario = dao.listar();
	model.addAttribute("listaUsuario", listaUsuario);
	return "produto/listarUsuario";
	}
	
	
}
