package servlets; 
import java.io.IOException;

//import java.sql.PreparedStatement;

//import java.sql.Statement;
//import java.util.ArrayList;
import java.util.ArrayList;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import beans.Province;
import dao.ProvinceDao;

/*** 
* 
* @author zdw 
* 
*/ 
public class ProvinceServlet extends HttpServlet 
{ 
private static final long serialVersionUID = 1L; 
public ProvinceServlet() 
{ 
super(); 
} 

public void doGet(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException 
{ 
	// response.setCharacterEncoding("GBK"); 
	response.setContentType("text/xml"); 
	response.setHeader("Cache-Control", "no-cache"); 
	//request.setCharacterEncoding("GBK"); 
	response.setCharacterEncoding("UTF-8");
	//PrintWriter out=response.getWriter();
	// 获得请求中参数为id的值
	String xml_start = "<selects>"; 
	String xml_end = "</selects>"; 
	String xml1 = ""; 
	int n=1;
	ArrayList<Province> Province=new ArrayList<Province>();
	request.setAttribute("List", Province);
	System.out.println("收集到省份");
	ProvinceDao pdao=new ProvinceDao();
	try {
		Province=pdao.getProvince();
		for(Province j:Province) {
			xml1 += "<select><value>"+(n++)+"</value><text>"+j.getPname()+"</text></select>"; 
		}
		System.out.println("输出:xml1"+xml1);
		String last_xml1 = xml_start + xml1 + xml_end; 
		response.getWriter().write(last_xml1); 
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	


} 

} 
