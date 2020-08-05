package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface ReportesvasRepository extends CrudRepository<Reportesvas, Integer>  {
	
	
	@Query(value = "SELECT c FROM Reportesvas c WHERE c.rutper LIKE '%' || :keyword || '%'")
	public List<Reportesvas> search(@Param("keyword") String keyword);
	 
}
