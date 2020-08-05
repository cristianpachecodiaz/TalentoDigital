package cl.coffeejava.modelo;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SvvisiRepository extends CrudRepository<Svvisi, Integer> {
	@Query(value = "SELECT c FROM Svvisi c WHERE c.fechasvv LIKE '%' || :keyword || '%'"
			+ " OR c.horasvv LIKE '%' || :keyword || '%'"
			+ " OR c.descsvv LIKE '%' || :keyword || '%'"
			+ " OR c.estado LIKE '%' || :keyword || '%'"
			+ " OR c.valorsvv LIKE '%' || :keyword || '%'"
			+ " OR c.contrato LIKE '%' || :keyword || '%'")
	
	public List<Svvisi> search(@Param("keyword") String keyword);
}
