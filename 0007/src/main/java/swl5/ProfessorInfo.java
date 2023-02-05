package swl5;

import java.util.Date;
import java.util.HashMap;

public class ProfessorInfo {
	private String code;
	private String name;
	private Date date;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public void find() {
		HashMap<String, String> map = new HashMap<>();
		map.put("1001", "컴퓨터공학과 권교수");
		map.put("2001", "AI반도체학과 서교수");
		map.put("3001", "사회복지과 김교수");
		
		name = map.get(code);
		
		if(name == null) {
			name = "등록되지 않은 교수명";
		}
		date = new Date();
	}
}
