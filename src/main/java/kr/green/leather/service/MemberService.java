package kr.green.leather.service;

import java.util.ArrayList;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.MemberVO;

public interface MemberService {

	MemberVO getMember(String member_id);

	MemberVO signin(MemberVO loginInfo);

	void signup(MemberVO mVo);

	ArrayList<MemberVO> getAllMember(Criteria cri);

	int getTotalCount();

	void updateAuthority(MemberVO mVo);

}
