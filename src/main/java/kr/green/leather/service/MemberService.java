package kr.green.leather.service;

import kr.green.leather.vo.MemberVO;

public interface MemberService {

	MemberVO getMember(String member_id);

	MemberVO signin(MemberVO loginInfo);

}
