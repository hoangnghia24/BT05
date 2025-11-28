package com.bt.bt05.repository;

import com.bt.bt05.model.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface VideoRepository extends JpaRepository<Video, Long> {
    List<Video> findByTitleContainingIgnoreCase(String title);
}
