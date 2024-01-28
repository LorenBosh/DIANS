package mk.ukim.finki.diansproekt.service;

import mk.ukim.finki.diansproekt.model.Monument;
import org.springframework.stereotype.Service;

import javax.management.monitor.MonitorNotification;
import java.util.List;
import java.util.Optional;

public interface MonumentService {

    List<Monument> findAll();

    Optional <Monument> findById(Long id);

    List<Monument> searchByNameAndType(String name,String type);
    List<Monument> searchByCityAndType(String city,String type);


    List<Monument> searchCityWithoutType(String city);

    List<Monument> searchNameWithoutType(String name);

    List<Monument> searchTypeWithoutNameAndCity(String type);

}
