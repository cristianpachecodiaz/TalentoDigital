package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Contrato;
import cl.coffeejava.modelo.ContratoRepository;

@Service
@Transactional
public class ContratoService {
	@Autowired
	ContratoRepository repo;
	
	public void save (Contrato contrato) {
		repo.save(contrato);
	}
	
	public List<Contrato> listAll(){
		return (List<Contrato>) repo.findAll();
	}
	
	public Contrato get(int id) {
		
		return repo.findById(id).get();		
	}

	public void delete(int id) {
		
		repo.deleteById(id);
	}
	
	public List<Contrato> search (String keyword){
		
		return repo.search(keyword);
	}
}
