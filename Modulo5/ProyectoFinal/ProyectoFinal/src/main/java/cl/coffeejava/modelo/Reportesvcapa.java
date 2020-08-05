package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the REPORTESVCAPA database table.
 * 
 */
@Entity
@Table(name="REPORTESVCAPA")
@NamedQuery(name="Reportesvcapa.findAll", query="SELECT r FROM Reportesvcapa r")
public class Reportesvcapa implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(nullable=false, precision=38)
	private BigDecimal idsvc;
	
	@Column(nullable=false, precision=38)
	private BigDecimal idcon;
	
	@Column(length=20)
	private String fechasvc;
	
	@Column(precision=38)
	private BigDecimal valorsvc;
	
	@Column(length=20)
	private String estado;
	
	@Column(nullable=false, length=15)
	private String rutper;

	@Column(nullable=false, length=100)
	private String nomper;	

	//constructor
	public Reportesvcapa() {
	}

	//getters
	
	public BigDecimal getIdsvc() {
		return this.idsvc;
	}	
		
	public BigDecimal getIdcon() {
		return this.idcon;
	}
	
	
	public String getFechasvc() {
		return this.fechasvc;
	}

		
	public BigDecimal getValorsvc() {
		return this.valorsvc;
	}
	
	public String getEstado() {
		return this.estado;
	}

	public String getRutper() {
		return this.rutper;
	}
	
	public String getNomper() {
		return this.nomper;
	}
	

}