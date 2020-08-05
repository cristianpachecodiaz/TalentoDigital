package cl.coffeejava.modelo;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;
//import java.util.Date;
//import java.util.List;


/**
 * The persistent class for the ACC database table.
 * 
 */
@Entity
@Table(name="ACC")
@NamedQuery(name="Acc.findAll", query="SELECT a FROM Acc a")
public class Acc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="ACCID") 
	@SequenceGenerator(name="ACCID",sequenceName="ACC_SEQ", allocationSize=1)
	private int idacc;

	@Column(nullable=false, length=200)
	private String descacc;

	//@Temporal(TemporalType.DATE)
	private Date fechaacc;
	
	@Column(name="traacc", length=350)
	private String traacc;

	//bi-directional many-to-one association to Persona
	@ManyToOne
	@JoinColumn(name="PERSONA_RUTPER", nullable=false)
	private Persona persona;


	public Acc() {
	}
	

	public String getTraacc() {
		return traacc;
	}


	public void setTraacc(String traacc) {
		this.traacc = traacc;
	}


	public Acc(int idacc, String descacc, Date fechaacc, String traacc, Persona persona) {
		super();
		this.idacc = idacc;
		this.descacc = descacc;
		this.fechaacc = fechaacc;
		this.traacc = traacc;
		this.persona = persona;
	}



	public int getIdacc() {
		return this.idacc;
	}

	public void setIdacc(int idacc) {
		this.idacc = idacc;
	}

	public String getDescacc() {
		return this.descacc;
	}

	public void setDescacc(String descacc) {
		this.descacc = descacc;
	}

	public Date getFechaacc() {
		return this.fechaacc;
	}

	public void setFechaacc(Date fechaacc) {
		this.fechaacc = fechaacc;
	}

	public Persona getPersona() {
		return this.persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}


}