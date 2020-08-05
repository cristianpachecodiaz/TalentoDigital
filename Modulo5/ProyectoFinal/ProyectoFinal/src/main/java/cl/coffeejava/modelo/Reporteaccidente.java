package cl.coffeejava.modelo;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;


@Entity
@Table(name ="REPORTEACCIDENTE")
@NamedQuery(name="Reporteaccidente.findAll", query="SELECT r FROM Reporteaccidente r")
public class Reporteaccidente implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(unique=true, nullable=false, precision=38)
	private int idacc;
	
	@Column(nullable=false, length=200)
	private String descacc;
	
	private Date fechaacc;
	
	@Column(nullable=false, length=15)
	private String traacc;
	
	@Column(nullable=false, length=15)
	private String rutper;
	
	@Column(nullable=false, length=100)
	private String nomper;
	
	
	//Constructor
	
	public Reporteaccidente() {
	}
	
	//getters
	
	public int getIdacc() {
		return idacc;
	}
	
	public String getDescacc() {
		return descacc;
	}
	
	public Date getFechaacc() {
		return fechaacc;
	}

	public String getTraacc() {
		return traacc;
	}
	
	public String getRutper() {
		return rutper;
	}
	
	public String getNomper() {
		return nomper;
	}
		
}


