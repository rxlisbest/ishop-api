package com.ishop.api.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GoodsController {

    @RequestMapping("/")
    public String index(){
        return "Congratulations! It works!";
    }
}
