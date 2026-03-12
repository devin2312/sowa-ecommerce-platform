package com.example.wallart.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.wallart.model.Art;

public interface ArtRepository extends JpaRepository<Art, String> {

}