package br.com.ifpe.estoque.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class CategoriaProdutoDao {
	
	private static final String PERSISTENCE_UNIT = "estoque";

	public List<CategoriaProduto> listar() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<CategoriaProduto> lista = manager.createQuery("FROM CategoriaProduto ORDER BY descricao").getResultList();
		manager.close();
		factory.close();
		return lista;
		}
	
	public CategoriaProduto buscarPorId(int id) {
		CategoriaProduto obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(CategoriaProduto.class, id);
		manager.close();
		factory.close();
		return obj;
	}
	
	public void salvar(CategoriaProduto categoriaProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(categoriaProduto);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
}
