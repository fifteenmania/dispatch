package com.tmax.hr.dispatch.entity;

import lombok.*;

import java.time.LocalDateTime;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class EmpDispatch {
    @NonNull private String dispatchId;
    @NonNull private String empId;
    @NonNull private String dutyCd;
    @NonNull private String workStatusCd;
    @NonNull private LocalDateTime dispatchEddt;
    @NonNull private String multijobCd;
    @NonNull private String dipatchTypeCd;
}
