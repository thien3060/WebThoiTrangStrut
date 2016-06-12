package com.model;
// Generated Jun 7, 2016 8:01:22 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Options generated by hbm2java
 */
@Entity
@Table(name = "options", catalog = "thoitrang")
public class Options implements java.io.Serializable {

	private Integer optionId;
	private String optionName;
	private Set<Productoption> productoptions = new HashSet<Productoption>(0);

	public Options() {
	}

	public Options(String optionName) {
		this.optionName = optionName;
	}

	public Options(String optionName, Set productoptions) {
		this.optionName = optionName;
		this.productoptions = productoptions;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "optionID", unique = true, nullable = false)
	public Integer getOptionId() {
		return this.optionId;
	}

	public void setOptionId(Integer optionId) {
		this.optionId = optionId;
	}

	@Column(name = "optionName", nullable = false)
	public String getOptionName() {
		return this.optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "options")
	public Set<Productoption> getProductoptions() {
		return this.productoptions;
	}

	public void setProductoptions(Set<Productoption> productoptions) {
		this.productoptions = productoptions;
	}

}
