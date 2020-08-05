package cl.coffeejava.servicio;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Svas;
import cl.coffeejava.modelo.SvasRepository;


@Service
@Transactional
public class SvasService {
	
	@Autowired
	SvasRepository repo;
	
	public void save (Svas svc) {
		repo.save(svc);
	}
	
	public List<Svas> listAll(){
		return (List<Svas>) repo.findAll();
	}
	
	public Svas get(int id) {
		
		
		return repo.findById(id).get();		
	}

	public void delete(int id) {		
	
		
		repo.deleteById(id);
	}
	
	public List<Svas> search (String keyword){
		
		return repo.search(keyword);
	}
	
}
