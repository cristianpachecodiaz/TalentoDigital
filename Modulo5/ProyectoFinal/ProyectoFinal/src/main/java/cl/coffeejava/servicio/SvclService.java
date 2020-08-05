package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cl.coffeejava.modelo.Svcl;
import cl.coffeejava.modelo.SvclRepository;

@Service
@Transactional
public class SvclService {
	
	@Autowired
	SvclRepository repo;
	
	public void save (Svcl svcl) {
		repo.save(svcl);
	}
	
	public List<Svcl> listAll(){
		return (List<Svcl>) repo.findAll();
	}
	
	public Svcl get(int id) {
		
		return repo.findById(id).get();		
	}

	public void delete(int id) {
		
		repo.deleteById(id);
	}
	
	public List<Svcl> search (String keyword){
		
		return repo.search(keyword);
	}
	
	

}
