package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TPERSONA database table.
 * 
 */
@Entity
@Table(name="TPERSONA")
@NamedQuery(name="Tpersona.findAll", query="SELECT t FROM Tpersona t")
public class Tpersona implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	//@GeneratedValue(strategy=GenerationType.TABLE)
	//@Column(unique=true, nullable=false, precision=38)
	@GeneratedValue(generator="TPERSONAID") 
	@SequenceGenerator(name="TPERSONAID",sequenceName="TPERSONA_SEQ", allocationSize=1)
	private int idtper;

	@Column(nullable=false, length=50)
	private String nomtper;

	//bi-directional many-to-one association to Persona
	@OneToMany(mappedBy="tpersona")
	private List<Persona> personas;

	public Tpersona() {
	}

	public int getIdtper() {
		return this.idtper;
	}

	public void setIdtper(int idtper) {
		this.idtper = idtper;
	}

	public String getNomtper() {
		return this.nomtper;
	}

	public void setNomtper(String nomtper) {
		this.nomtper = nomtper;
	}

	public List<Persona> getPersonas() {
		return this.personas;
	}

	public void setPersonas(List<Persona> personas) {
		this.personas = personas;
	}

	public Persona addPersona(Persona persona) {
		getPersonas().add(persona);
		persona.setTpersona(this);

		return persona;
	}

	public Persona removePersona(Persona persona) {
		getPersonas().remove(persona);
		persona.setTpersona(null);

		return persona;
	}

}