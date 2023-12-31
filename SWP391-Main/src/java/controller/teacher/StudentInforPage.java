/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.teacher;

import dal.AttendanceDAO;
import dal.KindergartnerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import model.Account;
import model.Attendance;
import model.Kindergartner;

/**
 *
 * @author Windows 10 TIMT
 */
@WebServlet(name = "StudentInforPage", urlPatterns = {"/studentifor"})
public class StudentInforPage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentInforPage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentInforPage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public List<String> getAllDateOfMonth(int month){
        List<String> list = new ArrayList<>();
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.MONTH, month-1);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        for (int i = 0; i < maxDay; i++) {
            cal.set(Calendar.DAY_OF_MONTH, i + 1);
            list.add(df.format(cal.getTime()));
        }
        return list;
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        KindergartnerDAO kinderdao = new KindergartnerDAO();
        AttendanceDAO attdao = new AttendanceDAO();
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        Account acc = (Account) session.getAttribute("account");
        int kid_id = Integer.parseInt(request.getParameter("kid_id"));
        if (acc != null) {
            Kindergartner kinder = kinderdao.getKidInfoById(kid_id);
            request.setAttribute("kinder", kinder);
            if (action.equalsIgnoreCase("feedback")) {
                request.getRequestDispatcher("teacher/feedback.jsp").forward(request, response);
            } else if (action.equalsIgnoreCase("attendance")) {
                int month = LocalDate.now().getMonthValue();
                List<String> listDate = getAllDateOfMonth(month);
                List<Attendance> attendance = attdao.getAttByKidId(kid_id);
                request.setAttribute("maxindexobject", attendance.get(attendance.size()-1));
                request.setAttribute("listDate", listDate);
                request.setAttribute("attendance", attendance);
                request.getRequestDispatcher("teacher/checkAttendence.jsp").forward(request, response);
            } else if (action.equalsIgnoreCase("kidprofile")) {
                request.getRequestDispatcher("teacher/kidprofile.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Do you want to create an account?");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
