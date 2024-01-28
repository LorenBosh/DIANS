package mk.ukim.finki.diansproekt.repository.jpa;

import mk.ukim.finki.diansproekt.model.Monument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MonumentRepository extends JpaRepository<Monument,Long> {
    List<Monument> findByNameStartingWith(String name);
    List<Monument> findByCity(String city);
    List<Monument> findByNameStartingWithAndType(String name, String type);
    List<Monument> findByCityAndType(String city,String type);

    List<Monument> findByType(String type);
}
