package kr.green.leather.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.leather.dao.MemberDAO;
import kr.green.leather.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
	
	@Autowired
	MemberDAO memberDao;

	@Override
	public MemberVO getMember(String member_id) {
		
		return memberDao.getMember(member_id);
	}
}
