package com.tmax.hr.dispatch.repository;


import com.tmax.hr.dispatch.dto.EmpDispatchHistory;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DispatchMapper {
    List<EmpDispatchHistory> selectEmpDispatchHistory(String empId);
}
