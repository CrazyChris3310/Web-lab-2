package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String x = request.getParameter("xCord");
        String y = request.getParameter("yCord");
        String r = request.getParameter("radius");
        String timeOffset = request.getParameter("time-offset");

        System.out.println("X: " + x + "\nY: " + y + "\nR: " + r + "\ntime-offset: " + timeOffset);

        RequestDispatcher dispatcher;
        if (x != null && y != null && r != null) {
            dispatcher = request.getRequestDispatcher("/area-check");
        } else {
            dispatcher = request.getRequestDispatcher("/index.jsp");
        }

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
