package mk.ukim.finki.diansproekt.web.controller;


import jakarta.servlet.http.HttpServletRequest;
import mk.ukim.finki.diansproekt.model.User;
import mk.ukim.finki.diansproekt.model.exceptions.InvalidUserCredentialsException;
import mk.ukim.finki.diansproekt.service.AuthService;
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
        // Create a RestTemplate instance
        RestTemplate restTemplate = new RestTemplate();

        // Prepare the request body
        String requestBody = "username=" + username + "&password=" + password;

        // Send a POST request to the authentication service
        ResponseEntity<String> authResponseEntity = restTemplate.postForEntity(authServiceUrl + "auth/login", requestBody, String.class);

        String authResponse = authResponseEntity.getBody();

        if (authResponseEntity.getStatusCode().is2xxSuccessful()) {
            model.addAttribute("authResponse", authResponse);
            return "redirect:/";
        } else {
            // Unsuccessful login
            model.addAttribute("authResponse", authResponse);
            return "login";
        }

    }
}