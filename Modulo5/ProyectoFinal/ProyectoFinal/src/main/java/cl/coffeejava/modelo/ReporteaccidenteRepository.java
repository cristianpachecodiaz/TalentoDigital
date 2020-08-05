package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface ReporteaccidenteRepository extends CrudRepository<Reporteaccidente, Integer>  {
			
	
	@Query(value = "SELECT c FROM Reporteaccidente c WHERE c.rutper LIKE '%' || :keyword || '%'")
	public List<Reporteaccidente> search(@Param("keyword") String keyword);
	 
}
