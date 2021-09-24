package servlets;

import com.google.gson.Gson;
import utils.Data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class CheckAreaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long start = System.nanoTime();

        String timeOffset = request.getParameter("time-offset");
        String date = ZonedDateTime.of(LocalDateTime.now(), ZoneId.of(timeOffset)).format(
                DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm:ss"));

        double x;
        double y;
        double r;
        try {
            x = Double.parseDouble(request.getParameter("xCord"));
            y = Double.parseDouble(request.getParameter("yCord"));
            r = Double.parseDouble(request.getParameter("radius"));
            if (x > 3 || x < -5 || r < 0 || y > 7 || y < -7) {
                response.setStatus(422);
                return;
            }
        } catch (NumberFormatException e) {
            response.setStatus(422);
            return;
        }

        boolean fits = checkValues(x, y, r);
        String result = fits ? "Да" : "Нет";
        String hrefToImage = fits ? "img/tick.png" : "img/no.png";

        long time = (System.nanoTime() - start) / 1000;

        response.addHeader("Content-Type", "text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();

        pw.write("<html lang=\"ru\">");
        pw.write("<head>");
        pw.write("<meta charset=\"UTF-8\">");
        pw.write("<link rel=\"stylesheet\" href=\"dist/result_style.css\">");
        pw.write("</head><body>");
        pw.write("<img src=\"" + hrefToImage + "\" alt=\"" + result + "\">");
        pw.write("<div class=\"thing\">");
        pw.write("<table>");
        pw.write("<tr>");
        pw.write("<th>X</th>");
        pw.write("<th>Y</th>");
        pw.write("<th>Радиус</th>");
        pw.write("<th>Дата</th>");
        pw.write("<th>Выполнение</th>");
        pw.write("<th>Попадание</th>");
        pw.write("</tr>");

        pw.write("<tr>");
        pw.write("<td>" + x + "</td>");
        pw.write("<td>" + y + "</td>");
        pw.write("<td>" + r + "</td>");
        pw.write("<td>" + date + "</td>");
        pw.write("<td>" + time + " мкс</td>");
        pw.write("<td>" + result + "</td>");
        pw.write("</tr>");
        pw.write("</table>");
        pw.write("</div>");
        pw.write("<a href=\"/main-page\">Назад</a>");

        pw.write("</body></html>");

        pw.close();
    }

    private boolean checkValues(double x, double y, double r) {
        boolean fits;
        if (x > 0) {
            if (y > 0) {
                fits = x*x + y*y <= r*r/4;
            }
            else {
                fits = y >= x/2 - r/2;
            }
        } else {
            if (y <= 0) {
                fits = y >= -r && x >= -r/2;
            }
            else {
                fits = x == 0 && y <= r/2;
            }
        }
        return fits;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
