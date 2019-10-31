
package acme.entities.offers;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Offer extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				title;

	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				moment;

	@Temporal(TemporalType.TIMESTAMP)
	@FutureOrPresent
	private Date				deadline;

	@NotBlank
	private String				text;

	@Valid
	@NotNull
	private Money				minMoney;

	@Valid
	@NotNull
	private Money				maxMoney;

	@NotBlank
	@Column(unique = true)
	@Pattern(regexp = "^O[a-zA-Z]{4}-[0-9]{5}")
	private String				ticker;

}
