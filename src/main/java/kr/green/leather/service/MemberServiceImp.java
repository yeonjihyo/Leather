package kr.green.leather.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.leather.dao.MemberDAO;
import kr.green.leather.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
	
	@Autowired
	MemberDAO memberDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Override
	public MemberVO getMember(String member_id) {
		
		return memberDao.getMember(member_id);
	}

	@Override
	public MemberVO signin(MemberVO loginInfo) {
		
		MemberVO user=memberDao.getMember(loginInfo.getMember_id());
		
		if(user != null && passwordEncoder.matches(loginInfo.getMember_pw(), user.getMember_pw())) {
			return user;
		}
		return null;
	}

	@Override
	public void signup(MemberVO mVo) {
		if(mVo ==null) {
			return;
		}
		String encPw =passwordEncoder.encode(mVo.getMember_pw());//입력한 비번을 암호화 시켜라 
		mVo.setMember_pw(encPw);
		memberDao.signup(mVo);
	}
}
