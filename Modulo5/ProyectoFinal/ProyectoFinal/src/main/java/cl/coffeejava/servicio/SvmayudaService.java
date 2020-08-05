package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Svmayuda;
import cl.coffeejava.modelo.SvmayudaRepository;

@Service
@Transactional
public class SvmayudaService {
	
	@Autowired
	SvmayudaRepository repo;
	
	
	public void save (Svmayuda svm) {
		repo.save(svm);
	}
	
	public List<Svmayuda> listAll(){
		return (List<Svmayuda>) repo.findAll();
	}
	
	public Svmayuda get(int id) {
		
		return repo.findById(id).get();		
	}

	public void delete (int id) {		
	
		
		repo.deleteById(id);
	}
	
	public List<Svmayuda> search (String keyword){
		
		return repo.search(keyword);
	}

}
