package WebCalc;

import java.io.IOException;
import java.util.Enumeration;

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
		
		Calc kalkulator = new Calc();
		
		if(request.getParameterValues("btnNum")!=null){
			if(request.getParameterValues("digitizer")!=null){
				updateDigitizer(kalkulator,request);
			}
		}
		
		if(request.getParameterValues("btnOp")!=null){
			RequestDispatcher requestDispatcher =
			        getServletContext().getRequestDispatcher("/WebCalcOpActive.jsp");
			      requestDispatcher.forward(request, response);	
		}
		
		request.setAttribute("calc",kalkulator);
		
		RequestDispatcher requestDispatcher =
		        getServletContext().getRequestDispatcher("/WebCalc.jsp");
		      requestDispatcher.forward(request, response);	
	}
	
	private void updateDigitizer(Calc _kalkulator,HttpServletRequest request){
		String digitValue = request.getParameterValues("digitizer")[0];
		String cyfra = request.getParameterValues("btnNum")[0];
		_kalkulator.setResult(digitValue + cyfra);
	}

}
