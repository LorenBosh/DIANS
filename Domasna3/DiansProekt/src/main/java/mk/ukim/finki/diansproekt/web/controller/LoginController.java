package mk.ukim.finki.diansproekt.web.controller;


import jakarta.servlet.http.HttpServletRequest;
import mk.ukim.finki.diansproekt.model.User;
import mk.ukim.finki.diansproekt.model.exceptions.InvalidUserCredentialsException;
import mk.ukim.finki.diansproekt.service.AuthService;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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

        ResponseEntity<String> authResponseEntity = restTemplate.postForEntity("http://localhost:9090/auth/login", requestEntity, String.class);

        if (authResponseEntity.getStatusCode().is2xxSuccessful()) {

            String authResponse = authResponseEntity.getBody();
            model.addAttribute("authResponse", authResponse);
            return "redirect:/";
        } else {
            // Unsuccessful login
            String authResponse = authResponseEntity.getBody();
            model.addAttribute("authResponse", authResponse);
            return "login";
        }
    }
}