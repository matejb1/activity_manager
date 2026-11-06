package com.mycompany.myapp.repository;

import com.mycompany.myapp.domain.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {
    @Query("SELECT COALESCE(SUM(a.duration), 0) FROM Activity a WHERE a.category.id = :idCategory")
    double sumByIdCategory(@Param("idCategory") long idCategory);

    @Query("SELECT COUNT(a.id) FROM Activity a WHERE a.category.id = :idCategory")
    long countByIdCategory(@Param("idCategory") long idCategory);
}
