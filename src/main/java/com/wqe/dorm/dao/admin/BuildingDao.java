package com.wqe.dorm.dao.admin;

import com.wqe.dorm.entity.admin.Building;
import com.wqe.dorm.entity.admin.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildingDao extends JpaRepository<Building, Long> {

    Building findByCampusAndBno(String campus,Integer bno);


    /**
     * 根据用户id查询
     * @param id
     * @return
     */
    @Query("select b from Building b where id = :id")
    Building find(@Param("id")Long id);

}
