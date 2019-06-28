package com.qst.itoffer.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.itoffer.bean.Job;
import com.qst.itoffer.dao.JobDAO;
/**
 * ְλ��Ϣ����Servlet
 *
 * @author QST����ʵѵ
 *
 */
@WebServlet("/JobServlet")
public class JobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JobServlet() {
        super();
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ��ȡ��������
		String type = request.getParameter("type");
		if("select".equals(type)){
			// ��ȡְλ���
			String jobid = request.getParameter("jobid");
			// ����ְλ��Ų�ѯְλ��ϸ��Ϣ
			JobDAO dao = new JobDAO();
			Job job = dao.getJobByID(jobid);
			// ��ְλ��Ϣ�������request����
			request.setAttribute("job", job);
			// ����ҵ��Ϣ�������request����
			request.setAttribute("company", job.getCompany());
			request.getRequestDispatcher("recruit/job.jsp").forward(request, response);
		}
	}

}
