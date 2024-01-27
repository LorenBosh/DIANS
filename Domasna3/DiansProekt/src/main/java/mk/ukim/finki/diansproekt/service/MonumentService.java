package mk.ukim.finki.diansproekt.service;

import mk.ukim.finki.diansproekt.model.Monument;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

public interface MonumentService {

    List<Monument> findAll();

    Optional <Monument> findById(Long id);

    Optional<Monument> searchByName(String name,String type);
    Optional<Monument> searchByCity(String city,String type);

    Optional<Monument> searchCityWithoutType(String city);

    Optional<Monument> searchNameWithoutType(String name);
}
