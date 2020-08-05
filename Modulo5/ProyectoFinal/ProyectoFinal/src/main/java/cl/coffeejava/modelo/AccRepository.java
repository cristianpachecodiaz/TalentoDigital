package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AccRepository extends CrudRepository<Acc, Integer>  {
	
	@Query(value = "SELECT c FROM Acc c WHERE c.descacc LIKE '%' || :keyword || '%'"
			+ " OR c.fechaacc LIKE '%' || :keyword || '%'"
			+ " OR c.persona LIKE '%' || :keyword || '%'")
	public List<Acc> search(@Param("keyword") String keyword);

}
