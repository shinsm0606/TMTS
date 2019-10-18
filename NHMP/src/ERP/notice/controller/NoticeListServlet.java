package ERP.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ERP.notice.model.service.NoticeService;
import ERP.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/nlist")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 공지사항 전체 목록보기 출력 처리용 컨트롤러 모델서비스로 요청받고 처리
				//노티스 서비스 객체 생성
				ArrayList<Notice> list = new NoticeService().selectAll();
				RequestDispatcher view = null;
				if (list.size() > 0) {
					view = request.getRequestDispatcher("views/ERP/Notice/ErpNoticeListView.jsp");
					request.setAttribute("list", list);
					view.forward(request, response);
				}else {
					view = request.getRequestDispatcher("views/common/Error.jsp");
					request.setAttribute("message", "공지사항 전체 목록 조회 실패!");
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

