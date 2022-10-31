/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Insertform;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KAAVIASUDHAN
 */
@WebServlet(name = "Validate1", urlPatterns = {"/Validate1"})
public class Validate1 extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet final2</title>");            
            out.println("</head>");
            out.println("<body>");
            int[] ques=new int[5];
            String[] ans=new String[5];
            String ans1="Java Server Page";
            String ans2="3 types";
            String ans3="Hypertext Markup Language";
                    
            ques[0]=Integer.parseInt(request.getParameter("ques1no"));
            ques[1]=Integer.parseInt(request.getParameter("ques2no"));
            ques[2]=Integer.parseInt(request.getParameter("ques3no"));
            String id=request.getParameter("name");
            ans[0]=request.getParameter("ques1");
            ans[1]=request.getParameter("ques2");
            ans[2]=request.getParameter("ques3");
            int i=0;
            int score=0;
            while(i<3){
                out.println(ques[i]);
                out.println(ans[i]);
                if(ques[i]==1){
                    if(ans[i].equals(ans1)){
                        score=score+1;
                    }
                }
                if(ques[i]==2){
                    
                    if(ans[i].equals(ans2)){
                        
                        score=score+1;
                    }
                }
                if(ques[i]==3){
                    
                    if(ans[i].equals(ans3)){
                        
                        score=score+1;
                    }
                }
                i=i+1;
            }
            Insertform q1=new Insertform();
            q1.connectionjdbc(score);
            RequestDispatcher dispatcher = request.getRequestDispatcher("MainPage.jsp");
            dispatcher.forward(request,response);
            out.println("<h1>Servlet final2 at " + id + "</h1>");
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
        processRequest(request, response);
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
