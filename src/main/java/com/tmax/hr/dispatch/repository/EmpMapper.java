package com.tmax.hr.dispatch.repository;

import com.tmax.hr.dispatch.dto.EmpStatus;
import com.tmax.hr.dispatch.entity.Emp;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EmpMapper {
    EmpStatus selectById(String empId);
    List<Emp> selectAll();
}
