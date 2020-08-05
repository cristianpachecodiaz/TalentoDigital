package cl.coffeejava.servicio;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Svcapa;
import cl.coffeejava.modelo.SvcapaRepository;

@Service
@Transactional
public class SvcapaService {
	
	@Autowired
	SvcapaRepository repo;
	
	public void save (Svcapa svc) {
		repo.save(svc);
	}
	
	public List<Svcapa> listAll(){
		return (List<Svcapa>) repo.findAll();
	}
	
	public Svcapa get(int id) {
		
		
		return repo.findById(id).get();		
	}

	public void delete(int id) {		
	
		
		repo.deleteById(id);
	}
	
	public List<Svcapa> search (String keyword){
		
		return repo.search(keyword);
	}
	
}
