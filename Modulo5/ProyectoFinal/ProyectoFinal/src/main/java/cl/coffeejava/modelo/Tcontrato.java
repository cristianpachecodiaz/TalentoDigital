package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TCONTRATO database table.
 * 
 */
@Entity
@Table(name="TCONTRATO")
@NamedQuery(name="Tcontrato.findAll", query="SELECT t FROM Tcontrato t")
public class Tcontrato implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="TCONTRATOID") 
	@SequenceGenerator(name="TCONTRATOID",sequenceName="TCONTRATO_SEQ", allocationSize=1)
	private int idtcon;

	@Column(nullable=false, length=100)
	private String desctcon;

	//bi-directional many-to-one association to Contrato
	@OneToMany(mappedBy="tcontrato")
	private List<Contrato> contratos;

	public Tcontrato() {
	}

	public int getIdtcon() {
		return this.idtcon;
	}

	public void setIdtcon(int idtcon) {
		this.idtcon = idtcon;
	}

	public String getDesctcon() {
		return this.desctcon;
	}

	public void setDesctcon(String desctcon) {
		this.desctcon = desctcon;
	}

	public List<Contrato> getContratos() {
		return this.contratos;
	}

	public void setContratos(List<Contrato> contratos) {
		this.contratos = contratos;
	}

	public Contrato addContrato(Contrato contrato) {
		getContratos().add(contrato);
		contrato.setTcontrato(this);

		return contrato;
	}

	public Contrato removeContrato(Contrato contrato) {
		getContratos().remove(contrato);
		contrato.setTcontrato(null);

		return contrato;
	}

}