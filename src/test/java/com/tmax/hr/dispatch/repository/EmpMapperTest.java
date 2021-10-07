package com.tmax.hr.dispatch.repository;

import com.tmax.hr.dispatch.dto.EmpStatus;
import com.tmax.hr.dispatch.entity.Emp;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class EmpMapperTest {
    @Autowired
    EmpMapper empMapper;

    @Test
    public void selectById() {
        EmpStatus emp = empMapper.selectById("00000002");
        System.out.println(emp);
    }
}