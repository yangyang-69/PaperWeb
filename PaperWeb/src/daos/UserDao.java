package daos;
import java.sql.*;
import beans.Users;

public class UserDao {
	//连接数据库要使用的量
		private String dbUrl=
				"jdbc:mysql://114.116.220.209:3306/paperweb?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
				
		private String name="hhh";//写上登陆数据库系统的用户名（安装数据库时候设置的用户名）
		private String password="Autumn2020";//写上登陆数据库系统的密码
		private String jdbcName="com.mysql.cj.jdbc.Driver";//数据库驱动
		private Connection conn = null;
		//公共的连接数据库方法
		public void getCon()throws Exception{
			Class.forName(jdbcName);
			conn = DriverManager.getConnection(dbUrl,name,password);
		}
		public Users RegisterinDB(String UserName,String password,String UserOrganization) 
				throws Exception{
			Users result = null;//声明对象
			getCon();
			System.out.println("数据库连接成功");
			String sql = "insert into user(UserName,password,UserOrganization) values('"+UserName+"','"+password+"','"+UserOrganization+"')";
			Statement state = conn.createStatement();
			state.executeUpdate(sql);
			closeCon(conn);
			return result;
		}
		public Users UserCheckbygetpass(String UserName) 
				throws Exception{
			Users result = null;//声明对象
			getCon();
			System.out.println("数据库连接成功");
			String sq2 = "select UserName,password,UserOrganization from user where UserName =?";
			PreparedStatement state = conn.prepareStatement(sq2);
			state.setString(1,UserName);
			ResultSet rs=state.executeQuery();
			//将结果放入rs，从rs中遍历
			if(rs.next()){
				//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
				result=new Users();
				result.setUserName(rs.getString("UserName"));
				result.setPassword(rs.getString("password"));
				result.setUserOrganization(rs.getString("UserOrganization"));
				}
				closeCon(conn);
			return result;
		}
		//关闭数据库
		public void closeCon(Connection con)throws Exception{
			if(con!=null)
				System.out.println("连接关闭");
				con.close();
		}
}

