package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the SVVISI database table.
 * 
 */
@Entity
@Table(name="SVVISI")
@NamedQuery(name="Svvisi.findAll", query="SELECT s FROM Svvisi s")
public class Svvisi implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="SVVISIID") 
	@SequenceGenerator(name="SVVISIID",sequenceName="SVVISI_SEQ", allocationSize=1)
	private int idsvvis;

	@Column(nullable=false, length=100)
	private String descsvv;

	@Column(name="fechasvv")
	private String fechasvv;

	@Column(length=50)
	private String horasvv;

	@Column(precision=38)
	private BigDecimal valorsvv;
	
	@Column(nullable=false, length=100)
	private String estado;

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	//bi-directional many-to-one association to Contrato
	@ManyToOne
	@JoinColumn(name="CONTRATO_IDCON", nullable=false)
	private Contrato contrato;

	public Svvisi() {
	}

	public int getIdsvvis() {
		return this.idsvvis;
	}

	public void setIdsvvis(int idsvvis) {
		this.idsvvis = idsvvis;
	}

	public String getDescsvv() {
		return this.descsvv;
	}

	public void setDescsvv(String descsvv) {
		this.descsvv = descsvv;
	}

	public String getFechasvv() {
		return this.fechasvv;
	}

	public void setFechasvv(String fechasvv) {
		this.fechasvv = fechasvv;
	}

	public String getHorasvv() {
		return this.horasvv;
	}

	public void setHorasvv(String horasvv) {
		this.horasvv = horasvv;
	}

	public BigDecimal getValorsvv() {
		return this.valorsvv;
	}

	public void setValorsvv(BigDecimal valorsvv) {
		this.valorsvv = valorsvv;
	}

	public Contrato getContrato() {
		return this.contrato;
	}

	public void setContrato(Contrato contrato) {
		this.contrato = contrato;
	}

}