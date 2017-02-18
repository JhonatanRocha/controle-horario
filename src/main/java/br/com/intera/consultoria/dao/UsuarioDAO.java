package br.com.intera.consultoria.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.intera.consultoria.model.Usuario;

@Repository
public class UsuarioDAO implements UserDetailsService {

	@PersistenceContext
    private EntityManager manager;
	
	public Usuario loadUserByUsername(String email) {
		List<Usuario> usuarios = manager.createQuery("select u from Usuario u where u.email = :email", Usuario.class).setParameter("email", email).getResultList();
		
		if(usuarios.isEmpty()) {
			throw new UsernameNotFoundException("Usuario " + email + " not found.");
		}
		
		return usuarios.get(0);
	}
}
