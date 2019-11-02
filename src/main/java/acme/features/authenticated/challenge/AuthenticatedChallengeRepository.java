/*
 * AuthenticatedConsumerRepository.java
 *
 * Copyright (c) 2019 Rafael Corchuelo.
 *
 * In keeping with the traditional purpose of furthering education and research, it is
 * the policy of the copyright owner to permit non-commercial use and redistribution of
 * this software. It has been tested carefully, but it is not guaranteed for any particular
 * purposes. The copyright owner does not offer any warranties or representations, nor do
 * they accept any liabilities with respect to them.
 */

package acme.features.authenticated.challenge;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.challenge.Challenge;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedChallengeRepository extends AbstractRepository {

	@Query("select a from Challenge a where a.id = ?1")
	Challenge findOneById(int id);

	@Query("select a from Challenge a where MONTH(CURRENT_TIMESTAMP)-MONTH(a.deadline)>=0 AND YEAR(a.deadline)-YEAR(CURRENT_TIMESTAMP)>=0 AND DAY(a.deadline)-DAY(CURRENT_TIMESTAMP)>=0 AND"
		+ " DATEPART(HOUR,CURRENT_TIMESTAMP)-DATEPART(HOUR,a.deadline)>=0 AND DATEPART(MINUTE,CURRENT_TIMESTAMP)-DATEPART(MINUTE,a.deadline)>=0")
	Collection<Challenge> findManyAll();

}
