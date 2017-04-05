package WebCalc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcController
 */
@WebServlet(
		 	name = "calcController",
	        urlPatterns = {"/calcControl"},
	        loadOnStartup = 1)
public class CalcController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Calc kalkulator = new Calc();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		kalkulator.setResult(kalkulator.getResult()+1);
		 
		request.setAttribute("calc",kalkulator);
		request.setAttribute("ticketId","to jest Id");
		RequestDispatcher requestDispatcher =
		        getServletContext().getRequestDispatcher("/WebCalc.jsp");
		      requestDispatcher.forward(request, response);	
	}

}
