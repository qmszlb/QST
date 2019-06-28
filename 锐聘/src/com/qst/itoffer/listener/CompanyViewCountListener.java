package com.qst.itoffer.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

import com.qst.itoffer.dao.CompanyDAO;
/**
 * ��ҵ��Ϣ�������ͳ�Ƽ�����
 */
@WebListener
public class CompanyViewCountListener implements ServletRequestListener {

	public CompanyViewCountListener() {

	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {

	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		HttpServletRequest request = (HttpServletRequest) sre
				.getServletRequest();
		String requestURI = request.getRequestURI();
		String queryString = request.getQueryString() == null ? "" : request
				.getQueryString();
		// �ж��Ƿ�������ҵ����Servlet���������󣬲��Һ��б�ʾ��ҵ��Ϣ�鿴���������
		if (requestURI.indexOf("CompanyServlet") >= 0
				&& (queryString.indexOf("select") >= 0)) {
			// �������ַ��������л�ȡ��ҵ���
			int id = Integer.parseInt(queryString.substring(queryString
					.lastIndexOf('=') + 1));
			// ���´���ҵ��Ϣ���������
			CompanyDAO dao = new CompanyDAO();
			dao.updateCompanyViewCount(id);
		}
	}

}
