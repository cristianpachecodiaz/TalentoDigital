package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface ReportesvcapaRepository extends CrudRepository<Reportesvcapa, Integer>  {
	
	
	@Query(value = "SELECT c FROM Reportesvcapa c WHERE c.rutper LIKE '%' || :keyword || '%'")
	public List<Reportesvcapa> search(@Param("keyword") String keyword);
	 
}
