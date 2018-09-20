package br.com.ifpe.estoque.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import br.com.ifpe.estoque.model.Usuario;
import br.com.ifpe.estoque.model.UsuarioDao;

@Controller
public class LoginController {

	
	
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session, Model model) {
	UsuarioDao dao = new UsuarioDao();
	Usuario usuarioLogado = dao.buscarUsuario(usuario);
	if (usuarioLogado != null) {
	 session.setAttribute("usuarioLogado", usuarioLogado);
	 return "produto/incluirProduto";
	}
	model.addAttribute("msg", "Não foi encontrado um usuário com o login e senha informados.");
	return "produto/Inicio";
	}
	
	@RequestMapping("sair")
	public String logout(HttpSession session) {
	session.invalidate();
	return "produto/Inicio";
	}
	
	@RequestMapping("/editUsu")
	public String edit(@RequestParam("id") Integer id, Model model)
	{
	UsuarioDao dao = new UsuarioDao();
	Usuario usuario = dao.buscarPorId(id);
	model.addAttribute("usuario", usuario);
	return "produto/usuario/alterarUsuario";
	}
	
	@RequestMapping("/updateUsu")
	public String updateUsuario(Usuario usuario, Model model) {
	UsuarioDao dao = new UsuarioDao();
	dao.alterar(usuario);
	model.addAttribute("mensagem", "Usuario Alterado com Sucesso !");
	return "forward:listUsu";
	}
	
	@RequestMapping("/deleteUsu")
	public String delete(@RequestParam("id") Integer id, Model model) {
	UsuarioDao dao = new UsuarioDao();
	dao.remover(id);
	model.addAttribute("msg", "Usuario Removido com Sucesso");
	return "forward:listUsu";
	}
}
