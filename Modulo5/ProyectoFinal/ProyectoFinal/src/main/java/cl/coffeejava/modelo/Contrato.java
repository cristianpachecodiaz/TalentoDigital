package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;


import java.util.List;


/**
 * The persistent class for the CONTRATO database table.
 * 
 */
@Entity
@Table(name="CONTRATO")
@NamedQuery(name="Contrato.findAll", query="SELECT c FROM Contrato c")
public class Contrato implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="CONTRATOID") 
	@SequenceGenerator(name="CONTRATOID",sequenceName="CONTRATO_SEQ", allocationSize=1)
	private int idcon;

	@ManyToOne
	@JoinColumn(name="TCONTRATO_IDTCON", nullable=false)
	private Tcontrato tcontrato;
	
	//bi-directional one-to-one association to Persona
	@ManyToOne
	@JoinColumn(name="PERSONA_RUTPER")
	private Persona persona;
	
	@Column(nullable=true)
	private int valorpag;
	
	

	@Column(name="detpag", length=100)
	private String detpag;
		
	@Column(nullable=true)
	private int valorextpag;
	
	@Column(name="estado", length=3)
	private String estado;
	
	//bi-directional many-to-one association to Svas
	@OneToMany(mappedBy="contrato")
	private List<Svas> svases;

	//bi-directional many-to-one association to Svcapa
	@OneToMany(mappedBy="contrato")
	private List<Svcapa> svcapas;

	//bi-directional many-to-one association to Svmayuda
	@OneToMany(mappedBy="contrato")
	private List<Svmayuda> svmayudas;

	//bi-directional many-to-one association to Svvisi
	@OneToMany(mappedBy="contrato")
	private List<Svvisi> svvisis;

	public Contrato() {
	}

	public int getIdcon() {
		return this.idcon;
	}

	public void setIdcon(int idcon) {
		this.idcon = idcon;
	}

	

	public Persona getPersona() {
		return this.persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	public Tcontrato getTcontrato() {
		return this.tcontrato;
	}

	public void setTcontrato(Tcontrato tcontrato) {
		this.tcontrato = tcontrato;
	}

	public int getValorpag() {
		return valorpag;
	}

	public void setValorpag(int valorpag) {
		this.valorpag = valorpag;
	}

	public String getDetpag() {
		return detpag;
	}

	public void setDetpag(String detpag) {
		this.detpag = detpag;
	}

	public int getValorextpag() {
		return valorextpag;
	}

	public void setValorextpag(int valorextpag) {
		this.valorextpag = valorextpag;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	public List<Svas> getSvases() {
		return this.svases;
	}

	public void setSvases(List<Svas> svases) {
		this.svases = svases;
	}

	public Svas addSvas(Svas svas) {
		getSvases().add(svas);
		svas.setContrato(this);

		return svas;
	}

	public Svas removeSvas(Svas svas) {
		getSvases().remove(svas);
		svas.setContrato(null);

		return svas;
	}

	public List<Svcapa> getSvcapas() {
		return this.svcapas;
	}

	public void setSvcapas(List<Svcapa> svcapas) {
		this.svcapas = svcapas;
	}

	public Svcapa addSvcapa(Svcapa svcapa) {
		getSvcapas().add(svcapa);
		svcapa.setContrato(this);

		return svcapa;
	}

	public Svcapa removeSvcapa(Svcapa svcapa) {
		getSvcapas().remove(svcapa);
		svcapa.setContrato(null);

		return svcapa;
	}

	public List<Svmayuda> getSvmayudas() {
		return this.svmayudas;
	}

	public void setSvmayudas(List<Svmayuda> svmayudas) {
		this.svmayudas = svmayudas;
	}

	public Svmayuda addSvmayuda(Svmayuda svmayuda) {
		getSvmayudas().add(svmayuda);
		svmayuda.setContrato(this);

		return svmayuda;
	}

	public Svmayuda removeSvmayuda(Svmayuda svmayuda) {
		getSvmayudas().remove(svmayuda);
		svmayuda.setContrato(null);

		return svmayuda;
	}

	public List<Svvisi> getSvvisis() {
		return this.svvisis;
	}

	public void setSvvisis(List<Svvisi> svvisis) {
		this.svvisis = svvisis;
	}

	public Svvisi addSvvisi(Svvisi svvisi) {
		getSvvisis().add(svvisi);
		svvisi.setContrato(this);

		return svvisi;
	}

	public Svvisi removeSvvisi(Svvisi svvisi) {
		getSvvisis().remove(svvisi);
		svvisi.setContrato(null);

		return svvisi;
	}

}