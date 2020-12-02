package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.Sources;

public class SourceDao {
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
	/*
	 * 此处插入数据处理方法
	 */
	public Sources getSourceNamedao(int SourceID) 
			throws Exception{
		Sources result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sq2 = "select SourceName from source where SourceID =?";
		PreparedStatement state = conn.prepareStatement(sq2);
		state.setInt(1,SourceID);
		ResultSet rs=state.executeQuery();
		//将结果放入rs，从rs中遍历
		if(rs.next()){
			//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
			result=new Sources();
			result.setSourceName(rs.getString("SourceName"));
			closeCon(conn);
		}
		return result;
	}
	//关闭数据库
	public void closeCon(Connection con)throws Exception{
		if(con!=null)
			System.out.println("连接关闭");
			con.close();
	}
}
