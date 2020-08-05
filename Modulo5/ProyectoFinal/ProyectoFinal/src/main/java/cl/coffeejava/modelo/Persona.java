package cl.coffeejava.modelo;

import java.io.Serializable;
import javax.persistence.*;



import java.util.List;


/**
 * The persistent class for the PERSONA database table.
 * 
 */
@Entity
@Table(name="PERSONA")
@NamedQuery(name="Persona.findAll", query="SELECT p FROM Persona p")
public class Persona implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(unique=true, nullable=false, length=15)
	//@GeneratedValue(generator="PERSONAID") 
	//@SequenceGenerator(name="PERSONAID",sequenceName="PERSONA_SEQ", allocationSize=1)
	private String rutper;

	@Column(length=20)
	private String ciuper;

	@Column(nullable=false, length=100)
	private String correoper;

	@Column(nullable=false, length=200)
	private String dirper;

	@Column(nullable=false, length=100)
	private String nomper;

	//bi-directional many-to-one association to Acc
	@OneToMany(mappedBy="persona")
	private List<Acc> accs;

	

	//bi-directional one-to-one association to Contrato
	
	//@OneToOne(mappedBy = "idcon",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
	//private Contrato contrato;
	
	//bi-directional many-to-one association to Contrato
		@OneToMany(mappedBy="persona")
		private List<Contrato> contratos;

	//bi-directional many-to-one association to Tpersona
	@ManyToOne
	@JoinColumn(name="TPERSONA_IDTPER")
	private Tpersona tpersona;

	
	//bi-directional many-to-one association to Svcl
	@OneToMany(mappedBy="persona")
	private List<Svcl> svcls;

	

	public Persona() {
	}

	public String getRutper() {
		return this.rutper;
	}

	public void setRutper(String rutper) {
		this.rutper = rutper;
	}

	public String getCiuper() {
		return this.ciuper;
	}

	public void setCiuper(String ciuper) {
		this.ciuper = ciuper;
	}

	public String getCorreoper() {
		return this.correoper;
	}

	public void setCorreoper(String correoper) {
		this.correoper = correoper;
	}

	public String getDirper() {
		return this.dirper;
	}

	public void setDirper(String dirper) {
		this.dirper = dirper;
	}

	public String getNomper() {
		return this.nomper;
	}

	public void setNomper(String nomper) {
		this.nomper = nomper;
	}

	public List<Acc> getAccs() {
		return this.accs;
	}

	public void setAccs(List<Acc> accs) {
		this.accs = accs;
	}

	public Acc addAcc(Acc acc) {
		getAccs().add(acc);
		acc.setPersona(this);

		return acc;
	}

	public Acc removeAcc(Acc acc) {
		getAccs().remove(acc);
		acc.setPersona(null);

		return acc;
	}

	public List<Contrato> getContratos() {
		return this.contratos;
	}

	public void setContratos(List<Contrato> contratos) {
		this.contratos = contratos;
	}


	public Tpersona getTpersona() {
		return this.tpersona;
	}

	public void setTpersona(Tpersona tpersona) {
		this.tpersona = tpersona;
	}

	

	public List<Svcl> getSvcls() {
		return this.svcls;
	}

	public void setSvcls(List<Svcl> svcls) {
		this.svcls = svcls;
	}

	public Svcl addSvcl(Svcl svcl) {
		getSvcls().add(svcl);
		svcl.setPersona(this);

		return svcl;
	}

	public Svcl removeSvcl(Svcl svcl) {
		getSvcls().remove(svcl);
		svcl.setPersona(null);

		return svcl;
	}


}