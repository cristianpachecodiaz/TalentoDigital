package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
//import java.util.List;


/**
 * The persistent class for the SVCAPA database table.
 * 
 */
@Entity
@Table(name="SVCAPA")
@NamedQuery(name="Svcapa.findAll", query="SELECT s FROM Svcapa s")
public class Svcapa implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator="SVCAPAID") 
	@SequenceGenerator(name="SVCAPAID",sequenceName="SVCAPA_SEQ", allocationSize=1)
	private int idsvc;

	@Column(nullable=false, precision=38)
	private int cantsvc;

	@Column(name="fechasvc")
	private String fechasvc;

	@Column(length=100)
	private String horasvc;

	@Column(name="valorsvc", precision=38)
	private int valorsvc;
	
	@Column(name="tracapa", length=350)
	private String tracapa;
	
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


	public Svcapa() {
		
	}

	public String getTracapa() {
		return tracapa;
	}

	public void setTracapa(String tracapa) {
		this.tracapa = tracapa;
	}

	public int getIdsvc() {
		return this.idsvc;
	}

	public void setIdsvc(int idsvc) {
		this.idsvc = idsvc;
	}

	public int getCantsvc() {
		return this.cantsvc;
	}

	public void setCantsvc(int cantsvc) {
		this.cantsvc = cantsvc;
	}

	public String getFechasvc() {
		return this.fechasvc;
	}

	public void setFechasvc(String fechasvc) {
		this.fechasvc = fechasvc;
	}

	public String getHorasvc() {
		return this.horasvc;
	}

	public void setHorasvc(String horasvc) {
		this.horasvc = horasvc;
	}

	public int getValorsvc() {
		return this.valorsvc;
	}

	public void setValorsvc(int valorsvc) {
		this.valorsvc = valorsvc;
	}

	public Contrato getContrato() {
		return this.contrato;
	}

	public void setContrato(Contrato contrato) {
		this.contrato = contrato;
	}


	public Svcapa(int idsvc, int cantsvc, String fechasvc, String horasvc, int valorsvc, String tracapa,
			Contrato contrato) {
		super();
		this.idsvc = idsvc;
		this.cantsvc = cantsvc;
		this.fechasvc = fechasvc;
		this.horasvc = horasvc;
		this.valorsvc = valorsvc;
		this.tracapa = tracapa;
		this.contrato = contrato;
	}

	
	
	
	

}