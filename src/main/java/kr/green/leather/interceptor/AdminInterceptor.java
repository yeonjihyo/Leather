package kr.green.leather.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.leather.vo.MemberVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();//현재세션정보를가져오고
		MemberVO user = (MemberVO)session.getAttribute("user");
		if(user == null || !user.getMember_authority().equals("ADMIN")) {
			response.sendRedirect(request.getContextPath()+"/"); 
		}
		return true;
	}
}
