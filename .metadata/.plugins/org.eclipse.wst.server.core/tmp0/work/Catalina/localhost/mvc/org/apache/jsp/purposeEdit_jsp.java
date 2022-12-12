/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.83
 * Generated at: 2022-12-10 12:56:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class purposeEdit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');

// 스크립트 립 : 자바의 영역, DB와 연동가능
int month = Integer.parseInt(request.getParameter("month"));
String food = request.getParameter("food");
String trans = request.getParameter("trans");
String medi = request.getParameter("medi");
String leis = request.getParameter("leis");
String etc = request.getParameter("etc");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>목표치 수정</title>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"resources/css/out.css\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css\">\n");
      out.write("<link rel='stylesheet'\n");
      out.write("	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>\n");
      out.write("<link rel='stylesheet'\n");
      out.write("	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>\n");
      out.write("<script\n");
      out.write("	src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("	/* 메뉴 클릭 시 이벤트 -> 해당 메뉴에 대한 content 출력 */\n");
      out.write("	$(function() {\n");
      out.write("	        $(\".tab-content\").eq(0).show(0); // 첫번째 tab 보여줌\n");
      out.write("	        $(\".tab-ul li\").click(function() { // li 클릭하면\n");
      out.write("	            var idx = $(this).index(); // tab-ul li 중 클릭한 것이 몇 번째인지 확인\n");
      out.write("	            $(\".tab-content\").hide(); // tab-content 숨김\n");
      out.write("	            $(\".tab-content\").eq(idx).show(); // 클릭한 것에 해당하는 tab-content 보여줌\n");
      out.write("	            $(\".tab-ul li\").removeClass(\"active\"); // active 클래스 지워줌\n");
      out.write("	            $(this).addClass(\"active\"); // 클릭한 것에 active 클래스 추가\n");
      out.write("	            if(idx == 0){  // 누른 버튼이 수입/지출 관리이면 \n");
      out.write("	                location.href=\"account.jsp\";\n");
      out.write("	            } else if(idx == 1){  // 누른 버튼이 캘린더이면\n");
      out.write("	                location.href=\"calendar.jsp\"; // 캘린더 페이지 호출할 Controller 주소 입력!\n");
      out.write("	            } else if(idx == 2){ // 누른 버튼이 통계이면\n");
      out.write("	                location.href=\"\"; // 통계 페이지 호출할 Controller 주소 입력!\n");
      out.write("	            } else{ // 누른 버튼이 목표지출이면\n");
      out.write("	                location.href=\"intro.jsp\";  // 목표지출 페이지 호출할 Controller 주소 입력!\n");
      out.write("	            }\n");
      out.write("	        });\n");
      out.write("	    });\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("	<div class=\"total\">\n");
      out.write("		<!-- 메뉴 -->\n");
      out.write("		<div class=\"menu\">\n");
      out.write("			<h2 style=\"margin-left: 30px; margin-top: 20px;\">\n");
      out.write("				<i class=\"fi fi-rr-money-check-edit\"></i>가계부\n");
      out.write("			</h2>\n");
      out.write("			<ul class=\"tab-ul\">\n");
      out.write("				<li><a id=\"tab1\"><i class=\"fi fi-rr-add\"></i>수입/지출\n");
      out.write("						관리</a></li>\n");
      out.write("				<li><a id=\"tab2\"><i class=\"fi fi-rs-calendar-check\"></i>캘린더</a>\n");
      out.write("				</li>\n");
      out.write("				<li><a id=\"tab3\"><i class=\"fi fi-rs-chart-histogram\"></i>통계</a>\n");
      out.write("				</li>\n");
      out.write("				<li  class=\"active\"><a id=\"tab4\"><i class=\"fi fi-rr-coins\"></i>목표 지출</a></li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("		<!-- 내용 -->\n");
      out.write("		<div class=\"content\">\n");
      out.write("			<div class=\"tab-content\">\n");
      out.write("				<!-- 수입/지출 관리 페이지 -->\n");
      out.write("				<h4 style=\"margin-left: 30px; margin-top: 20px;\">\n");
      out.write("					<i class=\"fi fi-rr-coins\"></i>목표 지출 				\n");
      out.write("				</h4>\n");
      out.write("				<hr style=\"width: 200%;\">\n");
      out.write("				<br>\n");
      out.write("				<form action=\"update\">\n");
      out.write("					<h3>");
      out.print(month);
      out.write("월 목표치 수정\n");
      out.write("					</h3>\n");
      out.write("					<input type=\"hidden\" name=\"month\" value=\"");
      out.print(month);
      out.write("\">\n");
      out.write("					<table>\n");
      out.write("						<tr>\n");
      out.write("							<td>식비</td>\n");
      out.write("							<td><input type=\"text\" name=\"food\" value=\"");
      out.print(food);
      out.write("\">\n");
      out.write("							</td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td>교통비</td>\n");
      out.write("							<td><input type=\"text\" name=\"trans\" value=\"");
      out.print(trans);
      out.write("\">\n");
      out.write("							</td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td>의료비</td>\n");
      out.write("							<td><input type=\"text\" name=\"medi\" value=\"");
      out.print(medi);
      out.write("\">\n");
      out.write("							</td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td>여가비</td>\n");
      out.write("							<td><input type=\"text\" name=\"leis\" value=\"");
      out.print(leis);
      out.write("\">\n");
      out.write("							</td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td>기타</td>\n");
      out.write("							<td><input type=\"text\" name=\"etc\" value=\"");
      out.print(etc);
      out.write("\">\n");
      out.write("							</td>\n");
      out.write("						</tr>\n");
      out.write("					</table>\n");
      out.write("					<button type=\"submit\">수정 완료</button>\n");
      out.write("					<button type=\"button\" onClick=\"location.href='intro.jsp'\">첫 화면으로</button>\n");
      out.write("				</form>\n");
      out.write("			</div>\n");
      out.write("\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}