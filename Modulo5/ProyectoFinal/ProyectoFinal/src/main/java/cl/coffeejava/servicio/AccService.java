package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Acc;
import cl.coffeejava.modelo.AccRepository;

@Service
@Transactional
public class AccService {
	@Autowired
	AccRepository repo;
	
	public void save (Acc acc) {
		repo.save(acc);
	}
	
	public List<Acc> listAll(){
		return (List<Acc>) repo.findAll();
	}
	
	public Acc get(int id) {
		
		return repo.findById(id).get();		
	}

	public void delete(int id) {
		
		repo.deleteById(id);
	}
	
	public List<Acc> search (String keyword){
		
		return repo.search(keyword);
	}
}
