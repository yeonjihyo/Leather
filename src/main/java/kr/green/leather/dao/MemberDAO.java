package kr.green.leather.dao;

import kr.green.leather.vo.MemberVO;

public interface MemberDAO {

	MemberVO getMember(String member_id);

	void signup(MemberVO mVo);

}
