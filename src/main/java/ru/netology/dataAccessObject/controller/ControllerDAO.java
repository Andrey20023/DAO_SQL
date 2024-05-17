package ru.netology.dataAccessObject.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dataAccessObject.repository.RepositoryDAO;

import java.util.List;


@RestController

public class ControllerDAO {
    private final RepositoryDAO repositoryDAO;

    public ControllerDAO(RepositoryDAO repositoryDAO) {
        this.repositoryDAO = repositoryDAO;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam("name") String name) {
        return repositoryDAO.getProductName(name);
    }
}
