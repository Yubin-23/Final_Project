package com.cloud.pt.employee;


import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CertificationVO {
	private Long certificationNum;
	private String employeeNum;
	private String title;
	private Date passDate;
}
