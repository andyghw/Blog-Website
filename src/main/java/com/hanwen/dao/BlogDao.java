package com.hanwen.dao;

import com.hanwen.domain.Blog;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogDao extends CrudRepository<Blog,Integer> {
    @Query("SELECT DISTINCT b.type FROM Blog b")
    List<String> getAllType();
}
