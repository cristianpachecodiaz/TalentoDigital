package cl.coffeejava.servicio;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Persona;
import cl.coffeejava.modelo.PersonaRepository;


@Service
@Transactional
public class PersonaService {
	
	@Autowired
	PersonaRepository repo;
	
	
	public void save (Persona per) {
		repo.save(per);
	}
	
	public List<Persona> listAll(){
		return (List<Persona>) repo.findAll();
	}
	
	public Persona get(String rutper) {
		
		return repo.findById(rutper).get();
		//return repo.findById(rutper).get();		
	}

	public void delete(String rutper) {		
	
		
		repo.deleteById(rutper);
	}
	
	public List<Persona> search (String keyword){
		
		return repo.search(keyword);
	}

}
