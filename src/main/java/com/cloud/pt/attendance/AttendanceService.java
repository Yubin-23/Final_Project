package com.cloud.pt.attendance;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cloud.pt.commons.Pager;
import com.cloud.pt.employee.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AttendanceService {
	@Autowired
	private AttendanceDAO attendanceDAO;
	
	//해당 직원의 근태정보 리스트(json)
	public List<Map<String, Object>> getList(EmployeeVO employeeVO) throws Exception {
		List<Map<String, Object>> list = attendanceDAO.getList(employeeVO);
		
		JSONObject jsonObj; 
		JSONArray jsonArr = new JSONArray(); //대괄호
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).get("STATE")==null) {
				continue;
			}
			map.put("title", list.get(i).get("STATE"));
			map.put("start", list.get(i).get("WORKDATE"));
			map.put("onTime", list.get(i).get("ONTIME"));
			map.put("offTime", list.get(i).get("OFFTIME"));
			
			if(list.get(i).get("STATE").equals("조퇴")) {
				map.put("color", "#F5D0A9");
			}else if(list.get(i).get("STATE").equals("정상")) {
				map.put("color", "#BCF5A9");
			}else if(list.get(i).get("STATE").equals("결근")) {
				map.put("color", "#F6CECE");
			}else if(list.get(i).get("STATE").equals("지각")) {
				map.put("color", "#F3F781");
			}else {
				map.put("color", "#CEE3F6");
			}
			
			map.put("textColor", "#000000");
			
			jsonObj = new JSONObject(map); //중괄호 {key:value, key:value}
			jsonArr.add(jsonObj); //대괄호 안에 넣어주기[{key:value, key:value},{key:value, key:value}]
		}
		
		log.info("jsonArr: {}", jsonArr);
		
		return jsonArr;
	}
	
	public List<Map<String, Object>> getAdminList() throws Exception {
		List<Map<String, Object>> list = attendanceDAO.getAdminList();
		System.out.println(list);
		
		JSONObject jsonObj; 
		JSONArray jsonArr = new JSONArray(); //대괄호
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).get("STATE")==null) {
				continue;
			}
			JSONArray resourceIds1 = new JSONArray();
			resourceIds1.add(list.get(i).get("EMPLOYEENUM"));
			map.put("title", list.get(i).get("STATE"));
			map.put("resourceIds", resourceIds1);
			map.put("start", list.get(i).get("WORKDATE"));
			map.put("onTime", list.get(i).get("ONTIME"));
			map.put("offTime", list.get(i).get("OFFTIME"));
			map.put("name", list.get(i).get("NAME"));
			
			if(list.get(i).get("STATE").equals("조퇴")) {
				map.put("color", "#F5D0A9");
			}else if(list.get(i).get("STATE").equals("정상")) {
				map.put("color", "#BCF5A9");
			}else if(list.get(i).get("STATE").equals("결근")) {
				map.put("color", "#F6CECE");
			}else if(list.get(i).get("STATE").equals("지각")) {
				map.put("color", "#F3F781");
			}else {
				map.put("color", "#CEE3F6");
			}
			
			map.put("textColor", "#000000");
			
			jsonObj = new JSONObject(map); //중괄호 {key:value, key:value}
			jsonArr.add(jsonObj); //대괄호 안에 넣어주기[{key:value, key:value},{key:value, key:value}]
		}
		
		log.info("jsonArr: {}", jsonArr);
		
		return jsonArr;
	}
	
	public List<Map<String, Object>> getResources() throws Exception {
		List<Map<String, Object>> list = attendanceDAO.getResources();
		System.out.println(list);
		
		JSONObject jsonObj; 
		JSONArray jsonArr = new JSONArray(); //대괄호
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		for(int i=0; i<list.size(); i++) {
			map.put("id", list.get(i).get("EMPLOYEENUM"));
			map.put("title", list.get(i).get("NAME"));
			
			jsonObj = new JSONObject(map); //중괄호 {key:value, key:value}
			jsonArr.add(jsonObj); //대괄호 안에 넣어주기[{key:value, key:value},{key:value, key:value}]
		}
		
		log.info("jsonArr: {}", jsonArr);
		
		return jsonArr;
	}
	
	public AttendanceVO getInfo(EmployeeVO employeeVO) throws Exception {
		long currentTimeMillis = System.currentTimeMillis();
        Date currentSqlDate = new Date(currentTimeMillis); //헌재 날짜 
        
        Map<String, Object> map = new HashMap<>();
        map.put("vo", employeeVO);
        map.put("date", currentSqlDate);
		
		return attendanceDAO.getInfo(map);
	}
	
	public int setOn(EmployeeVO employeeVO) throws Exception {
		return attendanceDAO.setOn(employeeVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setOff(EmployeeVO employeeVO) throws Exception {
		int result = attendanceDAO.setOff(employeeVO);
		
		if(result>0) {
			setState(employeeVO);
		}
		return result;
	}
	
	public int setState(EmployeeVO employeeVO) throws Exception {
		AttendanceVO attendanceVO = getInfo(employeeVO);
		String on = "09:01:00";
		String off = "18:00:00";
		Time standardOn = Time.valueOf(on); //출근시간 기준
		Time standardOff = Time.valueOf(off); //퇴근시간 기준 
		
		Map<String, Object> map = new HashMap<>();
//		map.put("onTime", attendanceVO.getOnTime());
//		map.put("offTime", attendanceVO.getOffTime());
		map.put("vo", attendanceVO);
		map.put("on", standardOn);
		map.put("off", standardOff);
		
		return attendanceDAO.setState(map);
	}
	
	public List<AttendanceVO> getDayList(AttendanceVO attendanceVO, Pager pager) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("attendance", attendanceVO);
		map.put("pager", pager);
		
		pager.makeRowNum();
		Long total = attendanceDAO.getDayTotal(map);
		pager.makePageNum(total);
		
		return attendanceDAO.getDayList(map);
	}
	
	//---------------------------------------------------
	
	//근태 수정 
	@Transactional(rollbackFor = Exception.class)
	public int setUpdate(AttendanceVO attendanceVO, AttendanceModifyVO attendanceModifyVO) throws Exception {
		String status = attendanceModifyVO.getStatus(); //해당 근태수정요청안의 상태
//		System.out.println(status);
		
		Map<String, Object> map = new HashMap<>();
		map.put("attendance", attendanceVO);
		map.put("modify", attendanceModifyVO);
		
		int result = 0;
		
		if(status.equals("승인")) { //승인일 때
			result = attendanceDAO.setUpdateA(map); //attendance 수정
			
			if(result>0) {
				result = attendanceDAO.setUpdateAM(attendanceModifyVO); //attendanceModify 수정
			}
		}else { //반려일 때 
			attendanceDAO.setUpdateAM(attendanceModifyVO); //attendanceModify 수정
		}
		
		return result;
	}
	
	//근태 수정 요청안
	public AttendanceVO getRequestDetail(AttendanceModifyVO attendanceModifyVO) throws Exception {
		return attendanceDAO.getRequestDetail(attendanceModifyVO);
	}
	
	//근태 수정 요청 목록(관리자)
	public List<AttendanceVO> getRequestList(Pager pager) throws Exception {
		pager.makeRowNum();
		Long total = attendanceDAO.getRequestTotal(pager);
		pager.makePageNum(total);
		
//		log.info("pager: {}", pager);
		
		return attendanceDAO.getRequestList(pager);
	}
	
	//---------------------------------------------------
	public AttendanceModifyVO getModifyDetail(AttendanceModifyVO attendanceModifyVO) throws Exception {
		return attendanceDAO.getModifyDetail(attendanceModifyVO);
	}
	
	public List<AttendanceVO> getModifyList(EmployeeVO employeeVO, Pager pager) throws Exception {
		pager.makeRowNum();
		Long total = attendanceDAO.getModifyTotal(employeeVO);
		pager.makePageNum(total);
		
		Map<String, Object> map = new HashMap<>();
		map.put("vo", employeeVO);
		map.put("pager", pager);
		
		return attendanceDAO.getModifyList(map);
	}
	
	public int setModifyAdd(AttendanceModifyVO attendanceModifyVO, EmployeeVO employeeVO) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("modify", attendanceModifyVO);
		map.put("emp", employeeVO);
		
		Long num = attendanceDAO.getNum(map);
		
		attendanceModifyVO.setAttendanceNum(num);
		log.info("vo: {}", attendanceModifyVO.getModifyDate());

		return attendanceDAO.setModifyAdd(attendanceModifyVO);
	}
}
