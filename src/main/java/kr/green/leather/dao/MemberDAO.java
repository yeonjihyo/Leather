package kr.green.leather.dao;

import java.util.ArrayList;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.MemberVO;

public interface MemberDAO {

	MemberVO getMember(String member_id);

	void signup(MemberVO mVo);

	ArrayList<MemberVO> getAllMember(Criteria cri);

	int getTotalCount();

	void updateAuthority(MemberVO mVo);

}
