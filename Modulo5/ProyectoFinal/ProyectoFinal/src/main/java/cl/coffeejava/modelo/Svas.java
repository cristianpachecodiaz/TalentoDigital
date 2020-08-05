package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;



/**
 * The persistent class for the SVASES database table.
 * 
 */
@Entity
@Table(name="SVASES")
@NamedQuery(name="Svas.findAll", query="SELECT s FROM Svas s")
public class Svas implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="SVASESID") 
	@SequenceGenerator(name="SVASESID",sequenceName="SVASES_SEQ", allocationSize=1)
	private int idsva;

	@Column(nullable=false, length=300)
	private String descsva;

	@Column(name="fechasva")
	private String fechasva;

	@Column(length=100)
	private String horasva;

	@Column(precision=38)
	private int valorsva;
	
	@Column(nullable=false, length=100)
	private String estado;


	//bi-directional many-to-one association to Contrato
	@ManyToOne
	@JoinColumn(name="CONTRATO_IDCON", nullable=false)
	private Contrato contrato;
	

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Svas() {
	}

	public int getIdsva() {
		return this.idsva;
	}

	public void setIdsva(int idsva) {
		this.idsva = idsva;
	}

	public String getDescsva() {
		return this.descsva;
	}

	public void setDescsva(String descsva) {
		this.descsva = descsva;
	}

	public String getFechasva() {
		return this.fechasva;
	}

	public void setFechasva(String fechasva) {
		this.fechasva = fechasva;
	}

	public String getHorasva() {
		return this.horasva;
	}

	public void setHorasva(String horasva) {
		this.horasva = horasva;
	}

	public int getValorsva() {
		return this.valorsva;
	}

	public void setValorsva(int valorsva) {
		this.valorsva = valorsva;
	}

	public Contrato getContrato() {
		return this.contrato;
	}

	public void setContrato(Contrato contrato) {
		this.contrato = contrato;
	}
	
	/*
	 * public Svas(int idsva, String descsva, String fechasva, String horasva, int
	 * valorsva, Contrato contrato) { super(); this.idsva = idsva; this.descsva =
	 * descsva; this.fechasva = fechasva; this.horasva = horasva; this.valorsva =
	 * valorsva; this.contrato = contrato; }
	 */
	

}