package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface PersonaRepository extends CrudRepository <Persona, String>{
	
	@Query(value = "SELECT c FROM Persona c WHERE c.nomper LIKE '%' || :keyword || '%'"
			+ " OR c.dirper LIKE '%' || :keyword || '%'"
			+ " OR c.ciuper LIKE '%' || :keyword || '%'"
			+ " OR c.correoper LIKE '%' || :keyword || '%'"
			+ " OR c.tpersona LIKE '%' || :keyword || '%'")
	
	public List<Persona> search(@Param("keyword") String keyword);
}
