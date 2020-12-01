package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.Minorities;

public class MinorityDao {
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
	
	public  ArrayList<Minorities> getMinority() throws Exception{
		ArrayList<Minorities> MinorityList=new ArrayList<Minorities>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = "select MinorityID,MinorityName,MinorityInfo FROM minority";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Minorities M=new Minorities();
			M.setMinorityID(rs.getInt("MinorityID"));
			System.out.println(rs.getInt("MinorityID"));
			M.setMinorityName(rs.getString("MinorityName"));
			M.setMinorityInfo(rs.getString("MinorityInfo"));
			MinorityList.add(M);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return MinorityList;
	}
	

	//关闭数据库
	public void closeCon(Connection con)throws Exception{
		if(con!=null)
			System.out.println("连接关闭");
			con.close();
	}
}
