package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SvmayudaRepository extends CrudRepository <Svmayuda, Integer>{
	@Query(value = "SELECT s FROM Svmayuda s WHERE s.descsvm LIKE '%' || :keyword || '%'"
			+ " OR s.fechasvm LIKE '%' || :keyword || '%'"
			+ " OR s.valorsvm LIKE '%' || :keyword || '%'"
			+ " OR s.durasvm LIKE '%' || :keyword || '%'"
			+ " OR s.contrato LIKE '%' || :keyword || '%'"
			+ " OR s.estado LIKE '%' || :keyword || '%'")
	
	public List<Svmayuda> search(@Param("keyword") String keyword);

}
