package ru.netology.dataAccessObject.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dataAccessObject.repository.repDAO;

import java.util.List;


@RestController

public class controllerDAO {
    private final repDAO repositoryDAO;

    public controllerDAO(repDAO repositoryDAO) {
        this.repositoryDAO = repositoryDAO;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam("name") String name) {
        return repositoryDAO.getProductName(name);
    }
}
