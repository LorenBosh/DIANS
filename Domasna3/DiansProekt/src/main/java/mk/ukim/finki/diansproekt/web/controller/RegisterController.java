package mk.ukim.finki.diansproekt.web.controller;


import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class RegisterController {

    @RequestMapping("/register")
    public String showLoginForm() {
        return "register";
    }

    @PostMapping("/register")
    public String register(@RequestParam String username,
                           @RequestParam String password,
                           @RequestParam String repeatedPassword,
                           @RequestParam String name,
                           @RequestParam String surname, Model model){
        RestTemplate restTemplate = new RestTemplate();

        String requestBody = "username=" + username + "&password=" + password + "&repeatedPassword=" + repeatedPassword + "&name=" + name + "&surname=" + surname;

        HttpHeaders headers = new HttpHeaders();

        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);

        ResponseEntity<String> authResponseEntity = restTemplate.postForEntity("http://localhost:9090/auth/register", requestEntity, String.class);

        String authResponse = authResponseEntity.getBody();
        if(!authResponse.contains("Registration failed: password doesnt match ") && !authResponse.contains("Registration failed")){

            return "redirect:/login-form";
        }

        else{
            model.addAttribute("hasError",true);
            model.addAttribute("error","Registration failed");
            return "register";
        }


    }
}

