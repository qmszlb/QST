package com.qst.itoffer.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.itoffer.bean.Company;
import com.qst.itoffer.bean.Job;
import com.qst.itoffer.dao.CompanyDAO;
import com.qst.itoffer.dao.JobDAO;

/**
 * ��ҵ��Ϣ����Servlet

 *
 */
@WebServlet("/CompanyServlet")
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CompanyServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ��ȡ����ҵ��Ϣ�������������
		String type = request.getParameter("type");
		if ("select".equals(type)) {
			// ��ȡ�����ѯ����ҵ���
			String companyID = request.getParameter("id");
			// ������ҵ��Ų�ѯ��ҵ��ϸ��Ϣ
			CompanyDAO dao = new CompanyDAO();
			Company company = dao.getCompanyByID(companyID);
			// ����ѯ������ҵ��Ϣ����request������
			request.setAttribute("company", company);
			// ������ҵ��Ų�ѯ��ҵ��������Ƹְλ
			JobDAO jobdao = new JobDAO();
			List<Job> jobList = jobdao.getJobListByCompanyID(companyID);
			// ����ѯ����ְλ�б����request������
			request.setAttribute("joblist", jobList);
			// ����ת��
			request.getRequestDispatcher("recruit/company.jsp").forward(request,
					response);
		}
	}

}
