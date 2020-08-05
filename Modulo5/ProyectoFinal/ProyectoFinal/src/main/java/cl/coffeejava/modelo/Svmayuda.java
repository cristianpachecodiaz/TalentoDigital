package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the SVMAYUDA database table.
 * 
 */
@Entity
@Table(name="SVMAYUDA")
@NamedQuery(name="Svmayuda.findAll", query="SELECT s FROM Svmayuda s")
public class Svmayuda implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="SVMAYUDAID") 
	@SequenceGenerator(name="SVMAYUDAID",sequenceName="SVMAYUDA_SEQ", allocationSize=1)
	
	private int idsvm;

	@Column(nullable=false, length=100)
	private String descsvm;

	@Column(precision=38)
	private int durasvm;

	@Column(name="fechasvm")
	private String fechasvm;

	@Column(precision=38)
	private BigDecimal valorsvm;

	//bi-directional many-to-one association to Contrato
	@ManyToOne
	@JoinColumn(name="CONTRATO_IDCON", nullable=false)
	private Contrato contrato;
	
	@Column(nullable=false, length=100)
	private String estado;
	
	

	public Svmayuda() {
	}

	


	public int getIdsvm() {
		return idsvm;
	}


	public void setIdsvm(int idsvm) {
		this.idsvm = idsvm;
	}


	public String getDescsvm() {
		return descsvm;
	}


	public void setDescsvm(String descsvm) {
		this.descsvm = descsvm;
	}


	public int getDurasvm() {
		return durasvm;
	}


	public void setDurasvm(int durasvm) {
		this.durasvm = durasvm;
	}


	public String getFechasvm() {
		return fechasvm;
	}


	public void setFechasvm(String fechasvm) {
		this.fechasvm = fechasvm;
	}


	public BigDecimal getValorsvm() {
		return valorsvm;
	}


	public void setValorsvm(BigDecimal valorsvm) {
		this.valorsvm = valorsvm;
	}


	public Contrato getContrato() {
		return contrato;
	}


	public void setContrato(Contrato contrato) {
		this.contrato = contrato;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	public Svmayuda(int idsvm, String descsvm, int durasvm, String fechasvm, BigDecimal valorsvm,
			Contrato contrato, String estado) {
		super();
		this.idsvm = idsvm;
		this.descsvm = descsvm;
		this.durasvm = durasvm;
		this.fechasvm = fechasvm;
		this.valorsvm = valorsvm;
		this.contrato = contrato;
		this.estado = estado;
	}

   
	
	
	
}