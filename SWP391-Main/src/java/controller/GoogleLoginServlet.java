/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Ulti.GoogleUtils;
import Ulti.dto.GooglePojo;
import dal.AccountDAO;
import dal.ClassDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;
import model.Account;
import model.GoogleAccount;
import model.Role;

/**
 *
 * @author Admin
 */
public class GoogleLoginServlet extends HttpServlet {

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
            out.println("<title>Servlet GoogleLoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GoogleLoginServlet at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String accessToken = GoogleUtils.getToken(code);
        GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
        HttpSession session = request.getSession(true);
        AccountDAO ad = new AccountDAO();
        String googleId = googlePojo.getId();
        GoogleAccount ga = ad.getGoogleAccountByID(googleId);
        String email = googlePojo.getEmail();
        Account emailUser = ad.getAccountByEmail(email);
        if (ga != null || emailUser != null) {
//        if (ga != null) {
//            Account acc = ga.getAccount();
            Account acc = emailUser;
            if (acc == null) {
                acc = ga.getAccount();
            }
            switch (acc.getRole().getRoleName()) {
                case "ROLE_TEACHER":
                    ClassDAO classDao = new ClassDAO();
                    List<Account> list = ad.getAllTeacherInfor();
                    for (Account account : list) {
                        if (account.getEmail().equals(email)) {
                            model.Class kc = classDao.getTeacherClass(account.getAccountID());
                            session.setAttribute("teacher", account);
                            session.setAttribute("kinder_class", kc);
                        }
                    }
                    String today = LocalDate.now().toString();
                    session.setAttribute("account", acc);
                    session.setAttribute("today", today);
                    response.sendRedirect("attendance");
                    break;
                case "ROLE_ADMIN":
                    session.setAttribute("account", acc);
                    response.sendRedirect("listschedule");
                    break;
                case "ROLE_PARENT":
                    session.setAttribute("account", acc);
                    response.sendRedirect("childdetailservlet");
                    break;
                default:
                    break;
            }
        } else {
//            Account a = new Account();
            String fname = request.getParameter("firstName");
            String lname = request.getParameter("lastName");
            String imageUrl = request.getParameter("image");

//            session.setAttribute("fname", fname);
//            session.setAttribute("lname", lname);
//            session.setAttribute("googleId", googleId);
//            session.setAttribute("email", email);
//            session.setAttribute("imageUrl", imageUrl);
            AccountDAO d = new AccountDAO();
            Account a = new Account();
            a.setFirstName(fname);
            a.setLastName(lname);
            a.setGender(true);
            a.setEmail(email);
            a.setPassword("1234");
            a.setDob("01/01/1999");
            a.setPhoneNumber("0000000000");
            a.setAddress("Please input new address");
            a.setImg(imageUrl);

            Role role = new Role(2, "parent");
            a.setRole(role);

            d.addAccount(a);
            d.addGoogleAccount(new GoogleAccount(d.getAccountByEmail(email), googleId));
            Account newAcc = d.getAccountByEmail(a.getEmail());
            session.setAttribute("account", newAcc);
            response.sendRedirect("parent/parentupdateprofile.jsp");
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
