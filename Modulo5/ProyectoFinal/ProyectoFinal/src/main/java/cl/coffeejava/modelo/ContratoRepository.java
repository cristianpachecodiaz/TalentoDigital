package cl.coffeejava.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ContratoRepository extends CrudRepository<Contrato, Integer>  {
	
	@Query(value = "SELECT c FROM Contrato c WHERE c.tcontrato LIKE '%' || :keyword || '%'"
			+ " OR c.persona LIKE '%' || :keyword || '%'"
			+ " OR c.valorpag LIKE '%' || :keyword || '%'"
			+ " OR c.detpag LIKE '%' || :keyword || '%'"
			+ " OR c.valorextpag LIKE '%' || :keyword || '%'"
			+ " OR c.estado LIKE '%' || :keyword || '%'")
	public List<Contrato> search(@Param("keyword") String keyword);

}
