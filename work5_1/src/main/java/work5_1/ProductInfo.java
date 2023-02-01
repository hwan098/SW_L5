package work5_1;

import java.util.Date;
import java.util.HashMap;

public class ProductInfo {
	private String code;
	private String vendor;
	private Date date;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getVendor() {
		return vendor;
	}
	public void setVendor(String vendor) {
		this.vendor = vendor;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public void find() {
		HashMap<String, String> map = new HashMap<>();
		
		map.put("A100", "삼성전자");
		map.put("A200", "신한은행");
		map.put("A300", "현대자동차");
		
		vendor = map.get(code);
		
		if(vendor == null) {
			vendor = "등록되지 않은 제품입니다!!";
		}
		
		date = new Date();
	}
}
