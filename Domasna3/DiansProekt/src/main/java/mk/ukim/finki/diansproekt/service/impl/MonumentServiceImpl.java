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
    public List<Monument> searchByNameAndType(String name,String type){
        return monumentRepository.findByNameStartingWithAndType(name,type);
    }

    @Override
    public List<Monument> searchByCityAndType(String city,String type){
        return monumentRepository.findByCityAndType(city,type);
    }

    @Override
    public List<Monument> searchCityWithoutType(String city){
        return monumentRepository.findByCity(city);
    }

    @Override
    public List<Monument> searchNameWithoutType(String name){
        return monumentRepository.findByNameStartingWith(name);
    }

    @Override
    public List<Monument> searchTypeWithoutNameAndCity(String type) {
        return monumentRepository.findByType(type);
    }
}
