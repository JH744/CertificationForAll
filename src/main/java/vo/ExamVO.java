package vo;

import java.util.Date;

public class ExamVO {
	private int e_id;
	private Date e_dateOfReceipt;
	private Date e_examDate;
	private Date e_resultDate;
	private String e_round;
	private String e_rate;
	private int examCode;
	private int c_id;
	public int getE_id() {
		return e_id;
	}
	public void setE_id(int e_id) {
		this.e_id = e_id;
	}
	public Date getE_dateOfReceipt() {
		return e_dateOfReceipt;
	}
	public void setE_dateOfReceipt(Date e_dateOfReceipt) {
		this.e_dateOfReceipt = e_dateOfReceipt;
	}
	public Date getE_examDate() {
		return e_examDate;
	}
	public void setE_examDate(Date e_examDate) {
		this.e_examDate = e_examDate;
	}
	public Date getE_resultDate() {
		return e_resultDate;
	}
	public void setE_resultDate(Date e_resultDate) {
		this.e_resultDate = e_resultDate;
	}
	public String getE_round() {
		return e_round;
	}
	public void setE_round(String e_round) {
		this.e_round = e_round;
	}
	public String getE_rate() {
		return e_rate;
	}
	public void setE_rate(String e_rate) {
		this.e_rate = e_rate;
	}
	public int getExamCode() {
		return examCode;
	}
	public void setExamCode(int examCode) {
		this.examCode = examCode;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public ExamVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExamVO(int e_id, Date e_dateOfReceipt, Date e_examDate, Date e_resultDate, String e_round, String e_rate,
			int examCode, int c_id) {
		super();
		this.e_id = e_id;
		this.e_dateOfReceipt = e_dateOfReceipt;
		this.e_examDate = e_examDate;
		this.e_resultDate = e_resultDate;
		this.e_round = e_round;
		this.e_rate = e_rate;
		this.examCode = examCode;
		this.c_id = c_id;
	}
	
	
	
	
	
}
