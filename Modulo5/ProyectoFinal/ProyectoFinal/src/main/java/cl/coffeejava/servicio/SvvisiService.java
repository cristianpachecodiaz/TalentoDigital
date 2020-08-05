package cl.coffeejava.servicio;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Svvisi;
import cl.coffeejava.modelo.SvvisiRepository;

@Service
@Transactional
public class SvvisiService {
	
	@Autowired
	SvvisiRepository repo;
	
	public void save (Svvisi svc) {
		repo.save(svc);
	}
	
	public List<Svvisi> listAll(){
		return (List<Svvisi>) repo.findAll();
	}
	
	public Svvisi get(int id) {		
		return repo.findById(id).get();		
	}

	public void delete(int id) {				
		repo.deleteById(id);
	}
	
	public List<Svvisi> search (String keyword){
		return repo.search(keyword);
	}
	
	
}
