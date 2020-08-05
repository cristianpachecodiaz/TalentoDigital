package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SvcapaRepository extends CrudRepository<Svcapa, Integer> {
	@Query(value = "SELECT c FROM Svcapa c WHERE c.cantsvc LIKE '%' || :keyword || '%'"
			+ " OR c.fechasvc LIKE '%' || :keyword || '%'"
			+ " OR c.estado LIKE '%' || :keyword || '%'"
			+ " OR c.horasvc LIKE '%' || :keyword || '%'"
			+ " OR c.valorsvc LIKE '%' || :keyword || '%'"
			+ " OR c.contrato LIKE '%' || :keyword || '%'")
	
	public List<Svcapa> search(@Param("keyword") String keyword);
}
