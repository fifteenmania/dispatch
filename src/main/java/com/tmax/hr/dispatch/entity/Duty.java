package com.tmax.hr.dispatch.entity;

import lombok.*;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Duty {
    private String dutyCd;
    @NonNull private String dutyNm;
    private String dutyParentCd;
}
