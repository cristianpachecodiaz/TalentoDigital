package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SVCL database table.
 * 
 */
@Entity
@Table(name="SVCL")
@NamedQuery(name="Svcl.findAll", query="SELECT s FROM Svcl s")
public class Svcl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="SVCLID") 
	@SequenceGenerator(name="SVCLID",sequenceName="SVCL_SEQ", allocationSize=1)
	private int idsvcl;

	@Column(nullable=false, length=100)
	private String descsvcl;

	@Column(nullable=false, length=3)
	private String estsvcl;

	//bi-directional many-to-one association to Persona
	@ManyToOne
	@JoinColumn(name="PERSONA_RUTPER", nullable=false)
	private Persona persona;

	public Svcl() {
	}

	public int getIdsvcl() {
		return this.idsvcl;
	}

	public void setIdsvcl(int idsvcl) {
		this.idsvcl = idsvcl;
	}

	public String getDescsvcl() {
		return this.descsvcl;
	}

	public void setDescsvcl(String descsvcl) {
		this.descsvcl = descsvcl;
	}

	public String getEstsvcl() {
		return this.estsvcl;
	}

	public void setEstsvcl(String estsvcl) {
		this.estsvcl = estsvcl;
	}

	public Persona getPersona() {
		return this.persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

}