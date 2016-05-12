package member.dao;

import java.sql.Connection;
import java.sql.SQLException;

import member.dto.MemberDTO;

public interface MemberDAO {
	int memberInsert(Connection conn,MemberDTO user) throws SQLException;
	MemberDTO login(String MEM_ID, String PWD, Connection conn) 
			throws SQLException;
	boolean idCheck(Connection conn,String id) throws SQLException;
}
