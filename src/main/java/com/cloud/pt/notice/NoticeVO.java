package com.cloud.pt.notice;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class NoticeVO {

	private Long noticeNum;
	private Long employeeNum;
	private String title;
	private String contents;
	private Date regDate;
	private Date modDate;
	private String category;
	private Long hit;
}
