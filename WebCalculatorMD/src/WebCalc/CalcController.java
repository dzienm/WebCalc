package WebCalc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import WebCalc.Model.Calc;

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
		kalkulator = (Calc)request.getSession().getAttribute("calc");
		
		if(request.getParameterValues("btnNum")!=null){
			if(request.getParameterValues("digitizer")!=null){
				updateDigitizer(kalkulator,request);
			}
		}
		
		if(request.getParameterValues("btnBinOp")!=null){
			try{
			kalkulator.calculateResult(true);}
			catch(IllegalStateException e){
				RequestDispatcher requestDispatcher =
				        getServletContext().getRequestDispatcher("/WebCalcError.jsp");
				      requestDispatcher.forward(request, response);
			}
			kalkulator.setBinaryOp(request.getParameterValues("btnBinOp")[0]);				
		}
		
		if(request.getParameterValues("btnUnOp")!=null){
			try{
			kalkulator.calculateUnaryOp(request.getParameterValues("btnUnOp")[0]);}
			catch(IllegalStateException e){
				RequestDispatcher requestDispatcher =
				        getServletContext().getRequestDispatcher("/WebCalcError.jsp");
				      requestDispatcher.forward(request, response);
			}
		}
		
		if(request.getParameterValues("btn")!=null){
			String btnValue = request.getParameterValues("btn")[0];
			
			switch(btnValue){
				case "dot":
					kalkulator.setDot();
					break;
				case "pm":
					kalkulator.setPlusMinus();
					break;
				case "calculate":
					try{
					kalkulator.calculateResult(false);}
					catch(IllegalStateException e){
						RequestDispatcher requestDispatcher =
						        getServletContext().getRequestDispatcher("/WebCalcError.jsp");
						      requestDispatcher.forward(request, response);
					}
					break;
				case "reset":
					request.getSession(false).invalidate();
					RequestDispatcher requestDispatcher =
					        getServletContext().getRequestDispatcher("/WebCalc.jsp");
					      requestDispatcher.forward(request, response);	
					break;
			}
							
		}
		
		request.setAttribute("calc",kalkulator);
		
		RequestDispatcher requestDispatcher =
		        getServletContext().getRequestDispatcher("/WebCalc.jsp");
		      requestDispatcher.forward(request, response);	
	}
	
	private void updateDigitizer(Calc _kalkulator,HttpServletRequest request){
		//String digitValue = request.getParameterValues("digitizer")[0];
		String cyfra = request.getParameterValues("btnNum")[0];
		_kalkulator.setResult(_kalkulator.getResult() + cyfra);
	}

}
