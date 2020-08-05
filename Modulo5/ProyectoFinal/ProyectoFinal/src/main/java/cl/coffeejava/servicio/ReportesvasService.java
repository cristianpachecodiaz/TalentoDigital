package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Reportesvas;
import cl.coffeejava.modelo.ReportesvasRepository;


@Service
@Transactional
public class ReportesvasService {
	
	@Autowired
	ReportesvasRepository repo;
	
		
	public List<Reportesvas> listAll(){
		return (List<Reportesvas>) repo.findAll();
	}
	
	public Reportesvas get(int idsva) {
		
		return repo.findById(idsva).get();
			
	}

	
	public List<Reportesvas> search (String keyword){
		
		return repo.search(keyword);
	} 

}
