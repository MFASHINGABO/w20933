package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.CarDao;
import Domain.Car;

public final class RegistrationCar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>PRINCE 20933</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <h2>CAR REG INFO</h2>\n");
      out.write("        ");

            String messa = (String) session.getAttribute("msq");
            if (messa != null) {

        
      out.write("  \n");
      out.write("        <h2>");
      out.print( messa);
      out.write("</h2>\n");
      out.write("        ");

        } else {
        
      out.write("\n");
      out.write("\n");
      out.write("        ");
 }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form action=\"SaveCar.jsp\" method=\"POST\">\n");
      out.write("            <table border=\"1\">\n");
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>PLATE-NO</td>\n");
      out.write("                        <td><input type=\"text\" editable=\"false\" value=\"\" name=\"a\" required=\"true\" pattern=\"GR[0-9]{3}[A-Z]\" title=\"please write in write in right way example:GR123L\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>MANUFACTURING-DATE</td>\n");
      out.write("                        <td><input type=\"text\" value=\"\" name=\"b\" required=\"true\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>COST</td>\n");
      out.write("                        <td><input type=\"text\" value=\"\" name=\"c\" required=\"true\" min=\"1500000\" max=\"16000000\" title=\"please cost must be between 1500000-16000000\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>INSTITUTION</td>\n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"d\">\n");
      out.write("                                <option value=\"RNP\">RNP</option>\n");
      out.write("                                <option value=\"RIB\">RIB</option>\n");
      out.write("                                <option value=\"RAA\">RAA</option>\n");
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td><input type=\"submit\" value=\"SAVE\"/></td>\n");
      out.write("                    </tr> \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
