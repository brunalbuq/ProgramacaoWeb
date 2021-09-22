package Aula1609;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public static final String USUARIO = "usuario";

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter resposta = response.getWriter();

        resposta.write("<html><body>");

        String nomeUsuario = request.getParameter(USUARIO);
        String senhaUsuario = request.getParameter("senha");

        if(autentica(nomeUsuario, senhaUsuario)) {
        	HttpSession sessao = request.getSession();
        	sessao.setAttribute(USUARIO, nomeUsuario);
        	sessao.getAttribute(USUARIO);
        	
            resposta.write("Bem vindo!!" + nomeUsuario);
        }
        else {
            resposta.write("Usuário e senha inválidos.");
        }

    }

    private boolean autentica(String usuario, String senha) {
        //Aqui entra o codigo de autenticação e acessa o banco de dados e verifica se o usuario e senha estao corretos
        if(!usuario.equals("") && usuario != null && senha != null && senha.equals("1234")) {
            return true;
        }
        return false;
    }

}
