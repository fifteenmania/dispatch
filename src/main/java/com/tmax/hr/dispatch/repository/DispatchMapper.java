package com.tmax.hr.dispatch.repository;


import com.tmax.hr.dispatch.dto.EmpDispatchHistory;
import com.tmax.hr.dispatch.dto.EmpStatus;

import java.util.List;

public interface DispatchMapper {
    public List<EmpDispatchHistory> selectEmpDispatchHistory(String empId);
}
