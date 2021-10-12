package com.tmax.hr.dispatch.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Getter
@ToString
public class EmpDispatchHistory {
    private String empId;
    private String empNm;
    private String dispatchId;
    private String dispatchTitle;
    private String dispatchStdt;
    private String dispatchEddt;
    private String dutyCd;
    private String dutyNm;
}
