package member.dto;

public class MemberDTO {
	 private String MEM_ID;
	 private String MEM_NM;              
	 private String MEM_CD;               
	 private String PWD ;                
	 private String PWD_HINT ;            
	 private String PWD_HINT_ANS ;       
	 private String SSN   ;              
	 private String BIRTH_DT ;           
	 private String MALE_FLG ;           
	 private String TEL_NO ;              
	 private String CELL_NO ;             
	 private String ADDR;                
	 private String EMAIL;               
	 private String EMAIL_RCV_FLG;       
	 private String MEM_REG_DTM;         
	 public MemberDTO(){
		 
	 }
	 //insert¿ë
	 public MemberDTO(String mEM_ID, String mEM_NM, String pWD, String pWD_HINT,
				String pWD_HINT_ANS, String sSN, String bIRTH_DT, String mALE_FLG,
				String tEL_NO, String cELL_NO, String aDDR, String eMAIL,
				String eMAIL_RCV_FLG) {
			super();
			MEM_ID = mEM_ID;
			MEM_NM = mEM_NM;
			PWD = pWD;
			PWD_HINT = pWD_HINT;
			PWD_HINT_ANS = pWD_HINT_ANS;
			SSN = sSN;
			BIRTH_DT = bIRTH_DT;
			MALE_FLG = mALE_FLG;
			TEL_NO = tEL_NO;
			CELL_NO = cELL_NO;
			ADDR = aDDR;
			EMAIL = eMAIL;
			EMAIL_RCV_FLG = eMAIL_RCV_FLG;
		}
	 //select¿ë
	public MemberDTO(String mEM_ID, String mEM_NM, String mEM_CD, String pWD,
			String pWD_HINT, String pWD_HINT_ANS, String sSN, String bIRTH_DT,
			String mALE_FLG, String tEL_NO, String cELL_NO, String aDDR,
			String eMAIL, String eMAIL_RCV_FLG, String mEM_REG_DTM) {
		super();
		MEM_ID = mEM_ID;
		MEM_NM = mEM_NM;
		MEM_CD = mEM_CD;
		PWD = pWD;
		PWD_HINT = pWD_HINT;
		PWD_HINT_ANS = pWD_HINT_ANS;
		SSN = sSN;
		BIRTH_DT = bIRTH_DT;
		MALE_FLG = mALE_FLG;
		TEL_NO = tEL_NO;
		CELL_NO = cELL_NO;
		ADDR = aDDR;
		EMAIL = eMAIL;
		EMAIL_RCV_FLG = eMAIL_RCV_FLG;
		MEM_REG_DTM = mEM_REG_DTM;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [MEM_ID=" + MEM_ID + ", MEM_NM=" + MEM_NM
				+ ", MEM_CD=" + MEM_CD + ", PWD=" + PWD + ", PWD_HINT="
				+ PWD_HINT + ", PWD_HINT_ANS=" + PWD_HINT_ANS + ", SSN=" + SSN
				+ ", BIRTH_DT=" + BIRTH_DT + ", MALE_FLG=" + MALE_FLG
				+ ", TEL_NO=" + TEL_NO + ", CELL_NO=" + CELL_NO + ", ADDR="
				+ ADDR + ", EMAIL=" + EMAIL + ", EMAIL_RCV_FLG="
				+ EMAIL_RCV_FLG + ", MEM_REG_DTM=" + MEM_REG_DTM + "]";
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}
	public String getMEM_NM() {
		return MEM_NM;
	}
	public void setMEM_NM(String mEM_NM) {
		MEM_NM = mEM_NM;
	}
	public String getMEM_CD() {
		return MEM_CD;
	}
	public void setMEM_CD(String mEM_CD) {
		MEM_CD = mEM_CD;
	}
	public String getPWD() {
		return PWD;
	}
	public void setPWD(String pWD) {
		PWD = pWD;
	}
	public String getPWD_HINT() {
		return PWD_HINT;
	}
	public void setPWD_HINT(String pWD_HINT) {
		PWD_HINT = pWD_HINT;
	}
	public String getPWD_HINT_ANS() {
		return PWD_HINT_ANS;
	}
	public void setPWD_HINT_ANS(String pWD_HINT_ANS) {
		PWD_HINT_ANS = pWD_HINT_ANS;
	}
	public String getSSN() {
		return SSN;
	}
	public void setSSN(String sSN) {
		SSN = sSN;
	}
	public String getBIRTH_DT() {
		return BIRTH_DT;
	}
	public void setBIRTH_DT(String bIRTH_DT) {
		BIRTH_DT = bIRTH_DT;
	}
	public String getMALE_FLG() {
		return MALE_FLG;
	}
	public void setMALE_FLG(String mALE_FLG) {
		MALE_FLG = mALE_FLG;
	}
	public String getTEL_NO() {
		return TEL_NO;
	}
	public void setTEL_NO(String tEL_NO) {
		TEL_NO = tEL_NO;
	}
	public String getCELL_NO() {
		return CELL_NO;
	}
	public void setCELL_NO(String cELL_NO) {
		CELL_NO = cELL_NO;
	}
	public String getADDR() {
		return ADDR;
	}
	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getEMAIL_RCV_FLG() {
		return EMAIL_RCV_FLG;
	}
	public void setEMAIL_RCV_FLG(String eMAIL_RCV_FLG) {
		EMAIL_RCV_FLG = eMAIL_RCV_FLG;
	}
	public String getMEM_REG_DTM() {
		return MEM_REG_DTM;
	}
	public void setMEM_REG_DTM(String mEM_REG_DTM) {
		MEM_REG_DTM = mEM_REG_DTM;
	}
	 
}
