package daos;
import java.sql.*;
import beans.Users;

public class DBPaperWebtest {
	//实验9-1
		private String dbUrl=
				"jdbc:mysql://114.116.220.209:3306/paperweb?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
		private String name="autumn";//写上登陆数据库系统的用户名（安装数据库时候设置的用户名）
		private String password="Autumn2020";//写上登陆数据库系统的密码
		private String jdbcName="com.mysql.cj.jdbc.Driver";//数据库驱动
		
		//公共的连接数据库方法
				public Connection getCon()throws Exception{
				Class.forName(jdbcName);
				Connection con = DriverManager.getConnection(dbUrl,name,password);
				return con;
				}//关闭数据库
				public void closeCon(Connection con)throws Exception{
				if(con!=null){
				con.close();
				}}//测试连接成功
				public static void main(String[] args) {
				DBPaperWebtest db = new DBPaperWebtest();
				try {
				db.getCon();
				System.out.println("连接成功");
				} 
				catch (Exception e) {
				e.printStackTrace();
				}
			}
				
		
}