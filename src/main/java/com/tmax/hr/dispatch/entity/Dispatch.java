package com.tmax.hr.dispatch.entity;

import lombok.*;

import java.time.LocalDateTime;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class Dispatch {
    private String dispatchId;
    @NonNull private String dispatchTitle;
    @NonNull private LocalDateTime dispatchStdt;
}
