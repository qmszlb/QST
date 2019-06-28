package com.qst.itoffer.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.itoffer.bean.Applicant;
import com.qst.itoffer.bean.JobApply;
import com.qst.itoffer.dao.JobApplyDAO;

/**
 * ְλ���봦��Servlet
 * 
 *
 */
@WebServlet("/JobApplyServlet")
public class JobApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JobApplyServlet() {
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
		// ��ȡ��������
		String type = request.getParameter("type");

		if ("apply".equals(type)) {
			// ��ȡְλ���
			String jobid = request.getParameter("jobid");
			// ��ȡ��¼�û�
			Applicant applicant = (Applicant) request.getSession()
					.getAttribute("SESSION_APPLICANT");
			// ��Ӵ��û��Դ�ְλ������
			JobApplyDAO dao = new JobApplyDAO();
			dao.save(jobid, applicant.getApplicantId());
			response.sendRedirect("JobApplyServlet?type=myapply");

		} else if ("myapply".equals(type)) {
			// ��ȡ��¼�û�
			Applicant applicant = (Applicant) request.getSession()
					.getAttribute("SESSION_APPLICANT");
			// �����û���ʶ��ѯ���û����������ְλ
			JobApplyDAO dao = new JobApplyDAO();
			List<JobApply> jobList = dao.getJobApplyList(applicant
					.getApplicantId());
			request.setAttribute("jobList", jobList);
			request.getRequestDispatcher("applicant/jobApply.jsp").forward(
					request, response);
		}
	}

}
