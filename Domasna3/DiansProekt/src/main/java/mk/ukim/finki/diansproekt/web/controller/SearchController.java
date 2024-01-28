package mk.ukim.finki.diansproekt.web.controller;

import jakarta.servlet.http.HttpServletRequest;
import mk.ukim.finki.diansproekt.model.Monument;
import mk.ukim.finki.diansproekt.service.MonumentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;



@Controller
@RequestMapping("/search")
public class SearchController {

    private final MonumentService monumentService;

    public SearchController(MonumentService monumentService) {
        this.monumentService = monumentService;
    }

    @GetMapping
    public String getSearchPage(@RequestParam(required = false) String error, Model model){
        if(error != null && !error.isEmpty()){
            model.addAttribute("hasError",true);
            model.addAttribute("error", error);
        }
        List<Monument> monuments=monumentService.findAll();
        model.addAttribute("monuments", monuments);
        return "search";
    }


    public String convertToCyrillic(String input) {
        String[] cyrillic = {"а", "б", "в", "г", "д", "ѓ", "е", "ж", "з", "ѕ", "и", "ј", "к", "л", "љ", "м", "н", "њ", "о", "п", "р", "с", "т", "ќ", "у", "ф", "х", "ц", "ч", "џ", "ш"};
        String[] latin = {"a", "b", "v", "g", "d", "gj", "e", "zh", "z", "dz", "i", "j", "k", "l", "lj", "m", "n", "nj", "o", "p", "r", "s", "t", "kj", "u", "f", "h", "c", "ch", "dj", "sh"};


        Map<String, String> map = new HashMap<>();
        for (int i = 0; i < cyrillic.length; i++) {
            map.put(latin[i], cyrillic[i]);
        }

        String replaced=null;

        for (Map.Entry<String, String> entry : map.entrySet()) {
            replaced = input.replace(entry.getKey(), entry.getValue());
        }
        return replaced;
    }


    @PostMapping("/search1")
    public String Search1(@RequestParam(name="name",required = false)String name,
                          @RequestParam(name="city",required = false) String city,
                          @RequestParam(name = "type", required = false) String type,
                          @RequestParam(name="searchName", required = false) String searchName,
                          @RequestParam(name="searchCity", required = false) String searchCity,
                          Model model){

        List<Monument> monuments =new ArrayList<Monument>();

        String convertedName = null;
        if(name!=null){
            convertedName=convertToCyrillic(name);
        }

        if (type != null) {
            if(searchName!=null){
                if(name != null && !name.isEmpty()) {
                    monuments = this.monumentService.searchByNameAndType(convertedName,type);
                }
                else{
                    monuments=this.monumentService.searchTypeWithoutNameAndCity(type);
                }
            }
            else if(searchCity!=null)
            {
                if(city!=null && !city.isEmpty()){
                    monuments = this.monumentService.searchByCityAndType(city,type);
                }
                else{
                    monuments=this.monumentService.searchTypeWithoutNameAndCity(type);
                }
            }

        }
        else {
            if(searchName!=null && name != null) {
                monuments = this.monumentService.searchNameWithoutType(convertedName);

            }
            else if(searchCity!=null && city!=null){
                monuments = this.monumentService.searchCityWithoutType(city);
            }
            else if(searchCity!=null || searchName!=null) {
                monuments=this.monumentService.findAll();
            }
        }

        if((type==null || type.isEmpty()) && (city==null || city.isEmpty()) && (convertedName==null || convertedName.isEmpty())) monuments=this.monumentService.findAll();


        model.addAttribute("monuments", monuments);
        return "searchResults";
    }


}
