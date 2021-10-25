package com.inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface command {
	
	//설계도 : 모든 개발자들이 통일된 메소드, 변수이름, 예외처리를 사용하게 하기 위해서
		//강제설계: interface에 있는 메소드는 반드시 기본 클래스에 만들어져야 함
		
		public String execute(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException;
	}

