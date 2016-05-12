package member.service;

import member.dto.MemberDTO;

public interface MemberService {
	int insert(MemberDTO user);
	MemberDTO login(String MEM_ID, String PWD);
	boolean idcheck(String id);
}
