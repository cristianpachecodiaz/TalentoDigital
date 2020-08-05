package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Reportesvcapa;
import cl.coffeejava.modelo.ReportesvcapaRepository;


@Service
@Transactional
public class ReportesvcapaService {
	
	@Autowired
	ReportesvcapaRepository repo;
	
		
	public List<Reportesvcapa> listAll(){
		return (List<Reportesvcapa>) repo.findAll();
	}
	
	public Reportesvcapa get(int idsvc) {
		
		return repo.findById(idsvc).get();
			
	}

	
	public List<Reportesvcapa> search (String keyword){
		
		return repo.search(keyword);
	} 

}
