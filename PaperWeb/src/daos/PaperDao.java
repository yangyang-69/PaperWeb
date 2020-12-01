package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import beans.Papers;

public class PaperDao {
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
	public Papers InsertPaper(String Title,String Summary,int SourceID,int MinorityID,int AuthorID)
			throws Exception{
		Papers result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"insert into paper(Title,Summary,SourceID,MinorityID,AuthorID) values "
				+ "('"+Title+"','"+Summary+"','"+SourceID+"','"+MinorityID+"','"+AuthorID+"')";
		Statement state = conn.createStatement();
		state.executeUpdate(sql);
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
