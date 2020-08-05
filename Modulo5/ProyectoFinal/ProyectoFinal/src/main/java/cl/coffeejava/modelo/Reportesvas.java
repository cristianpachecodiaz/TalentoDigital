package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the REPORTESVASES database table.
 * 
 */
@Entity
@Table(name="REPORTESVASES")
@NamedQuery(name="Reportesvas.findAll", query="SELECT r FROM Reportesvas r")
public class Reportesvas implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(nullable=false, precision=38)
	private BigDecimal idsva;
	
	@Column(nullable=false, precision=38)
	private BigDecimal idcon;

	
	@Column(nullable=false, length=100)
	private String descsva;
	
	@Column(length=20)
	private String fechasva;
	
	@Column(precision=38)
	private BigDecimal valorsva;

	@Column(length=20)
	private String estado;

	@Column(nullable=false, length=15)
	private String rutper;	

	@Column(nullable=false, length=100)
	private String nomper;

	//constructor	

	public Reportesvas() {
	}
	
	//getters
	
	public BigDecimal getIdsva() {
		return idsva;
	}

	public BigDecimal getIdcon() {
		return idcon;
	}

	public String getDescsva() {
		return descsva;
	}

	public String getFechasva() {
		return fechasva;
	}

	public BigDecimal getValorsva() {
		return valorsva;
	}

	public String getEstado() {
		return estado;
	}

	public String getRutper() {
		return rutper;
	}

	public String getNomper() {
		return nomper;
	}



}