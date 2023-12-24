package mk.ukim.finki.diansproekt.repository.jpa;

import mk.ukim.finki.diansproekt.model.Monument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MonumentRepository extends JpaRepository<Monument,Long> {
    Optional<Monument> findByName(String name);
    Optional<Monument> findByCity(String city);
    Optional<Monument> findByNameAndType(String name,String type);
    Optional<Monument> findByCityAndType(String city,String type);

}
