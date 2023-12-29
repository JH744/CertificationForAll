package vo;

public class CategoryVO {
	private int ca_key;
	private String ca_type;
	public int getCa_key() {
		return ca_key;
	}
	public void setCa_key(int ca_key) {
		this.ca_key = ca_key;
	}
	public String getCa_type() {
		return ca_type;
	}
	public void setCa_type(String ca_type) {
		this.ca_type = ca_type;
	}
	public CategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryVO(int ca_key, String ca_type) {
		super();
		this.ca_key = ca_key;
		this.ca_type = ca_type;
	}
	
	
}
