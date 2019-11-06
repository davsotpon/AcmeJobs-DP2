
package acme.features.anonymous.records;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.records.Records;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AnonymousRecordsRepository extends AbstractRepository {

	@Query("select a from Records a where a.id = ?1")
	Records findOneById(int id);

	@Query("select a from Records a order by a.stars DESC")
	Collection<Records> findManyAll();

}
