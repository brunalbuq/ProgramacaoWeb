package ExercicioAvaliativo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletNomeCompleto
 */
@WebServlet("/ServletNomeCompleto")
public class ServletNomeCompleto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletNomeCompleto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter saida = response.getWriter();
        saida.write("<HTML><TITLE>CONTATO</TITLE><BODY>");
        saida.write("Olá " + request.getParameter("nome") + " " + request.getParameter("sobrenome") + "!");
        saida.write("</BODY></HTML>");
        saida.close();
	}

}
