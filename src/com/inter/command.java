package com.inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface command {
	
	//���赵 : ��� �����ڵ��� ���ϵ� �޼ҵ�, �����̸�, ����ó���� ����ϰ� �ϱ� ���ؼ�
		//��������: interface�� �ִ� �޼ҵ�� �ݵ�� �⺻ Ŭ������ ��������� ��
		
		public String execute(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException;
	}

