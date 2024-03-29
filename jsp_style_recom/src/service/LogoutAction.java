package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//session 모두 제거
			HttpSession session = request.getSession();
			session.invalidate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}		
		return "main.do";
	}

}
