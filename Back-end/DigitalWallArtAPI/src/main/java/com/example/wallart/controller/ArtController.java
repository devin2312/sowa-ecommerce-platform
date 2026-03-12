package com.example.wallart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.wallart.model.Art;
import com.example.wallart.repo.ArtRepository;

@RestController
@RequestMapping("/art")
@CrossOrigin
public class ArtController {

    @Autowired
    private ArtRepository repo;

    @GetMapping("/all")
    public List<Art> getAllArt() {
        return repo.findAll();
    }

    @PostMapping("/add")
    public Art addArt(@RequestBody Art art) {
        return repo.save(art);
    }

    @GetMapping("/{id}")
    public Art getArtById(@PathVariable String id) {
        return repo.findById(id).orElse(null);
    }

    @PutMapping("/update/{id}")
    public Art updateArt(@PathVariable String id, @RequestBody Art art) {
        art.setId(id);
        return repo.save(art);
    }

    @DeleteMapping("/delete/{id}")
    public String deleteArt(@PathVariable String id) {
        repo.deleteById(id);
        return "Art deleted successfully";
    }
}