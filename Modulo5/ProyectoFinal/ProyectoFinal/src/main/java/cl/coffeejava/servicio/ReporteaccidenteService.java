package cl.coffeejava.servicio;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.coffeejava.modelo.Reporteaccidente;
import cl.coffeejava.modelo.ReporteaccidenteRepository;


@Service
@Transactional
public class ReporteaccidenteService {
	
	@Autowired
	ReporteaccidenteRepository repo;
	
		
	public List<Reporteaccidente> listAll(){
		return (List<Reporteaccidente>) repo.findAll();
	}
	
	public Reporteaccidente get(int idacc) {
		
		return repo.findById(idacc).get();
			
	}

	
	public List<Reporteaccidente> search (String keyword){
		
		return repo.search(keyword);
	} 

}
