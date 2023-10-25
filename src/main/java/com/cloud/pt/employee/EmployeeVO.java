package com.cloud.pt.employee;

import java.sql.Date;
import java.util.Collection;
import java.util.List;

import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.cloud.pt.attendance.AttendanceVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EmployeeVO implements UserDetails {
	
	@NotBlank
	private String employeeNum;
	@NotBlank
	private String name;
	@NotBlank
	@Size(min=8, max=12)
	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-z])(?=.*\\\\W)(?=\\\\S+$)", message="최소 8자리에서 12자리")
	private String password;
	private String pwCheck;
	@NotBlank
	private String phone;
	@NotBlank
	private String address;
	@NotNull
	private Character gender;
	@Past
	private Date birth;
	private Date joinDate;
	@Future
	private Date quitDate;
	@NotNull
	private String state;
	@NotNull
	private String position;
	private Long leaveDate;
	private String signFile;
	private String signOriginal;
	private String proFile;
	private String proOriginal;
	
	// attendance
	private List<AttendanceVO> list;
	
	
	
    // UserDetails의 override	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return employeeNum;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
}
