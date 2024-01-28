package mk.ukim.finki.diansproekt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutUsController {

    @GetMapping("/aboutUs")
    public String showAboutUs() {
        return "aboutUs"; // Make sure this matches your HTML file name
    }
}
