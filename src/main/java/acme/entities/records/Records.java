
package acme.entities.records;

import javax.persistence.Entity;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Records extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@NotNull
	@Transient
	public String				company;

	@NotBlank
	private String				sector;

	@NotBlank
	private String				CEO;

	@NotBlank
	private String				activities;

	@URL
	private String				web;

	//@Pattern(regexp = "^[+]{0,1}[1-9]{0,2}[\\s]{0,1}[(]{0,1}[1-9]{0,4}[)]{0,1}[\\s]{0,1}[0-9]{5,9}")

	// HASTA EL NAVO DE TO ESTE TAMBIEN DA FALLO Y ES EL DE MIGUEL@Pattern(regexp = "^([+]{1}[1-9][0-9]{0,2})?[(]{1}[0-9]{1,4}[)]{1}[0-9]{6,10}$")
	private Integer				phone;

	@Email
	@NotBlank
	private String				email;

	@NotNull
	public Boolean				incorporated;

	@Range(min = 0, max = 5)
	private Double				stars;


	@Transient
	public String getCompanyIncorporated() {

		StringBuilder res = new StringBuilder();
		res.append(this.company);

		if (this.incorporated == true) {

			res.append(" Inc.");

		} else {

			res.append(" LLC");
		}

		return res.toString();

	}

}
