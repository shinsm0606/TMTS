package ERP.Employee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ERP.Department.model.service.DepartmentService;
import ERP.Department.model.vo.Department;
import ERP.Employee.model.service.EmployeeService;
import ERP.Employee.model.vo.Employee;
import ERP.Position.model.service.PositionService;
import ERP.Position.model.vo.Position;
import ERP.Team.model.service.TeamService;
import ERP.Team.model.vo.Team;
import ERP.Ward.model.service.WardService;
import ERP.Ward.model.vo.Ward;

/**
 * Servlet implementation class EmployeeOrganizationChartServlet
 */
@WebServlet("/ochart")
public class EmployeeOrganizationChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeOrganizationChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Employee> mList = new EmployeeService().selectEmployeeList();
		ArrayList<Department> dList = new DepartmentService().selectAll();
		/*ArrayList<Team> tList = new TeamService().selectAll();
		ArrayList<Ward> wList = new WardService().selectAll();
		ArrayList<Position> pList = new PositionService().selectAll();*/
		System.out.println(mList);
		System.out.println(dList);
		RequestDispatcher view = null;
		if(mList != null && dList != null /*&& tList != null && wList != null && pList != null*/) {
			view = request.getRequestDispatcher("views/ERP/Employee/EmployeeOrganizationChart.jsp");
			request.setAttribute("mList", mList);
			request.setAttribute("dList", dList);
			/*request.setAttribute("tList", tList);
			request.setAttribute("wList", wList);
			request.setAttribute("pList", pList);*/
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/Error.jsp");
			request.setAttribute("message", "에러");
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
