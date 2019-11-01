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

package acme.features.anonymous.announcement;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.announcements.Announcement;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AnonymousAnnouncementRepository extends AbstractRepository {

	@Query("select a from Announcement a where a.id = ?1")
	Announcement findOneById(int id);

	@Query("select a from Announcement a where MONTH(CURRENT_TIMESTAMP)-MONTH(a.moment)<=1 AND YEAR(a.moment)-YEAR(CURRENT_TIMESTAMP)=0 AND DAY(CURRENT_TIMESTAMP)-DAY(a.moment)<=0 ")
	Collection<Announcement> findManyAll();

}
