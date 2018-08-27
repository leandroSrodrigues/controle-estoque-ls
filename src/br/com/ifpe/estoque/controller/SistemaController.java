package br.com.ifpe.estoque.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.estoque.model.CategoriaProduto;
import br.com.ifpe.estoque.model.CategoriaProdutoDao;
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
	public String listarProduto(Model model) {
	UsuarioDao dao = new UsuarioDao();
	List<Usuario> listaUsuario = dao.listar();
	model.addAttribute("listaProduto", listaUsuario);
	return "produto/listando";
	}
	
	
}
