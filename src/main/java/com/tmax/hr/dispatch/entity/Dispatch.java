package com.tmax.hr.dispatch.entity;

import lombok.*;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Dispatch {
    private String dispatchId;
    @NonNull private String dispatchTitle;
}
