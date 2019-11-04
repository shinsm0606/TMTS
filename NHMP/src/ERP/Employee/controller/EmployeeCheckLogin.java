package ERP.Employee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ERP.Calendar.Model.Service.CalendarService;
import ERP.Calendar.Model.vo.Calendar;
import ERP.Employee.model.service.EmployeeService;
import ERP.Employee.model.vo.Employee;

/**
 * Servlet implementation class EmployeeCheckLogin
 */
@WebServlet("/logins")
public class EmployeeCheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeCheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userid");
		String userPwd = request.getParameter("userpwd");
		String hostId = request.getParameter("hostid");
		String hostPwd = request.getParameter("hostpwd");
		
		Employee emp = new EmployeeService().loginCheck(userId, userPwd,hostId, hostPwd);
		System.out.println("mem" + emp);
		emp.setHostId(hostId);
		emp.setHostPwd(hostPwd);
		
		
		/*ArrayList<Notice> noList = new NoticeService().selectList();
		System.out.println("noList" + noList);*/
		RequestDispatcher view  = null;
		
		 
		if(emp != null) {
			String empname = emp.getEmpName();
			ArrayList<Calendar> list = new CalendarService().EmployeeSelectList(empname, hostId, hostPwd); // 캘린더 수정 처리
			
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			session.setAttribute("loginEmployee", emp);
			/*session.setAttribute("noList", noList);*/
			response.sendRedirect("/NHMP/views/ERP/Employee.jsp");
		}else {
			
			view = request.getRequestDispatcher("views/common/error.jsp");
			
			request.setAttribute("message", "로그인정보 불일치");
			
			view.forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
