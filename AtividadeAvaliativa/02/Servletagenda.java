package Exercicio2Avaliativo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servletagenda
 */
@WebServlet("/Servletagenda")
public class Servletagenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletagenda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter saida = response.getWriter();
        saida.write("<HTML><TITLE>DADOS AGENDA</TITLE><BODY>");
        saida.write("<h1>Agenda</h1>");
        saida.write("<h3>Olá! os dados inseridos na agenda foram:</h3>");

        Enumeration<String> nomesParametros = request.getParameterNames();

        while (nomesParametros.hasMoreElements()) {
            String var = nomesParametros.nextElement().toString();
            saida.write(var);
            saida.write("= ");
            saida.write(request.getParameter(var));
            saida.write("<br>");
        }

        saida.write("</BODY></HTML>");
        saida.close();
	}

}
