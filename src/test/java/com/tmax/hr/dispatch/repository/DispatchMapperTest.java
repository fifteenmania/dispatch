package com.tmax.hr.dispatch.repository;

import com.tmax.hr.dispatch.dto.EmpDispatchHistory;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class DispatchMapperTest {
    @Autowired
    DispatchMapper dispatchMapper;

    @Test
    public void selectEmpDispatchHistory() {
        List<EmpDispatchHistory> history = dispatchMapper.selectEmpDispatchHistory("00000002");
        history.stream().forEach(System.out::println);
    }
}