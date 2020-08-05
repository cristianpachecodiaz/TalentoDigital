package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SvclRepository extends CrudRepository<Svcl, Integer>{
	@Query(value = "SELECT s FROM Svcl s WHERE s.descsvcl LIKE '%' || :keyword || '%'"
			+ " OR s.estsvcl LIKE '%' || :keyword || '%'"
			+ " OR s.persona LIKE '%' || :keyword || '%'")
	public List<Svcl> search(@Param("keyword") String keyword);

}
