package mk.ukim.finki.diansproekt.repository;

import mk.ukim.finki.diansproekt.bootstrap.DataHolder;
import mk.ukim.finki.diansproekt.model.Monument;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Repository
public class MonumentRepository {
    public List<Monument> findAll() {return DataHolder.monumentList;}

    public Optional <Monument> findById(Long id){
        return DataHolder.monumentList.stream().filter(i->i.getId().equals(id)).findFirst();
    }

    public List<Monument> searchByName(String name, String type){
        return DataHolder.monumentList.stream().filter(i->i.getName().toLowerCase().contains(name.toLowerCase()) && i.getType().toLowerCase().contains(type.toLowerCase())).collect(Collectors.toList());
    }

    public List<Monument> searchByCity(String city, String type){
        return DataHolder.monumentList.stream().filter(i->i.getCity().toLowerCase().contains(city.toLowerCase()) && i.getType().toLowerCase().contains(type.toLowerCase())).collect(Collectors.toList());
    }

    public List<Monument> Details(Long id){
        return DataHolder.monumentList.stream().filter(i->i.getId().equals(id)).toList();
    }



}
