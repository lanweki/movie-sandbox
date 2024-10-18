package lt.lanweki.ainiuseva.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping
    public String getTestString() {
        return "Hello from the Spring Boot application";
    }
}
