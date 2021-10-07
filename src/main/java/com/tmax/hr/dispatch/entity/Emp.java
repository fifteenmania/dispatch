package com.tmax.hr.dispatch.entity;

import lombok.*;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Emp {
    private String empId;
    @NonNull private String empNm;
    private String dispatchId;
}
