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
		String sql = "SELECT minority.*,COUNT(*) FROM minority,paper " + 
				"where minority.MinorityID = paper.MinorityID " + 
				"group by MinorityID order by COUNT(*) desc";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Minorities M=new Minorities();
			M.setMinorityID(rs.getInt("MinorityID"));
			M.setMinorityName(rs.getString("MinorityName"));
			M.setMinorityInfo(rs.getString("MinorityInfo"));
			M.setCount_paper(rs.getInt("COUNT(*)"));
			MinorityList.add(M);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return MinorityList;
	}
	public Minorities getMinorityNamedao(int MinorityID) 
			throws Exception{
		Minorities result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sq2 = "select MinorityName from minority where MinorityID =?";
		PreparedStatement state = conn.prepareStatement(sq2);
		state.setInt(1,MinorityID);
		ResultSet rs=state.executeQuery();
		//将结果放入rs，从rs中遍历
		if(rs.next()){
			//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
			result=new Minorities();
			result.setMinorityName(rs.getString("MinorityName"));
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
