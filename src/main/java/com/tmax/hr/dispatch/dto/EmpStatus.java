package com.tmax.hr.dispatch.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Getter
@ToString
public class EmpStatus {
    private String EmpId;
    private String EmpNm;
    private String DutyCd;
    private String DutyNm;
}
