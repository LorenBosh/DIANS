package mk.ukim.finki.diansproekt.service.impl;

import lombok.AllArgsConstructor;
import mk.ukim.finki.diansproekt.model.Monument;
import mk.ukim.finki.diansproekt.repository.jpa.MonumentRepository;
import mk.ukim.finki.diansproekt.service.MonumentService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class MonumentServiceImpl implements MonumentService {

    private final MonumentRepository monumentRepository;

    @Override
    public List<Monument> findAll() {
        return this.monumentRepository.findAll();
    }

    @Override
    public Optional<Monument> findById(Long id) {
        return this.monumentRepository.findById(id);
    }


    @Override
    public Optional<Monument> searchByName(String name,String type){
        return monumentRepository.findByNameAndType(name,type);
    }

    @Override
    public Optional<Monument> searchByCity(String city,String type){
        return monumentRepository.findByCityAndType(city,type);
    }

    @Override
    public Optional<Monument> searchCityWithoutType(String city){
        return monumentRepository.findByCity(city);
    }

    @Override
    public Optional<Monument> searchNameWithoutType(String name){
        return monumentRepository.findByName(name);
    }

}
