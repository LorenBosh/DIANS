package mk.ukim.finki.diansproekt.web.controller;


import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class LoginController {

    @Value("${auth.service.url}")
    private String authServiceUrl;  // The URL of your authentication service

    @RequestMapping("/login-form")
    public String showLoginForm() {

        return "login";
    }

    @PostMapping("/login-form")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {

        RestTemplate restTemplate = new RestTemplate();

        String requestBody = "username=" + username + "&password=" + password;

        HttpHeaders headers = new HttpHeaders();

        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);

        ResponseEntity<String> authResponseEntity = restTemplate.postForEntity("https://loginmicroservice-859j.onrender.com/auth/login", requestEntity, String.class);

        String authResponse = authResponseEntity.getBody();
        if (!authResponse.contains("fail")) {
            model.addAttribute("authResponse", authResponse);
            return "redirect:/";
        }else  {
            model.addAttribute("hasError",true);
            model.addAttribute("error","Invalid credentials");
            return  "login";
        }

    }
}