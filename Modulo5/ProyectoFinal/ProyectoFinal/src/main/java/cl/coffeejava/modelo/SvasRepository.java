package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SvasRepository extends CrudRepository<Svas, Integer> {
	@Query(value = "SELECT c FROM Svas c WHERE c.descsva LIKE '%' || :keyword || '%'"
			+ " OR c.fechasva LIKE '%' || :keyword || '%'"
			+ " OR c.estado LIKE '%' || :keyword || '%'"
			+ " OR c.horasva LIKE '%' || :keyword || '%'"
			+ " OR c.valorsva LIKE '%' || :keyword || '%'"
			+ " OR c.contrato LIKE '%' || :keyword || '%'")
	
	public List<Svas> search(@Param("keyword") String keyword);
}

