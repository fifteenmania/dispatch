package com.tmax.hr.dispatch.entity;

import lombok.*;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class EmpDispatch {
    @NonNull private String dispatchId;
    @NonNull private String empId;
    @NonNull private String dutyCd;
    private String prevDispatchId;
}
