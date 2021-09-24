package servlets;

import com.google.gson.Gson;
import utils.Data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CheckAreaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();

        long start = System.nanoTime();

        Data data = new Data();
        data.setX(request.getParameter("xCord"));
        data.setY(request.getParameter("yCord"));
        data.setRadius(request.getParameter("radius"));
        data.setCurrentTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm:ss")));
        data.setResult("Yes");

        response.addHeader("Content-Language", "ru");
        response.addHeader("Content-Encoding", "UTF-8");

        data.setDuration((System.nanoTime() - start) / 1000 + " мкс");

        Gson gson = new Gson();
        String json = gson.toJson(data);

        pw.write(json);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
