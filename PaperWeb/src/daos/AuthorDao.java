package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Authors;
import beans.Minorities;

public class AuthorDao {
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
	public boolean AuthorCheck(String AuthorName) 
			throws Exception{
		Authors result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sq2 = "select AuthorID,Organization from author where AuthorName =?";
		PreparedStatement state = conn.prepareStatement(sq2);
		state.setString(1,AuthorName);
		ResultSet rs=state.executeQuery();
		//将结果放入rs，从rs中遍历
		if(rs.next()){
			//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
			result=new Authors();
			result.setOrganization(rs.getString("Organization"));
			int a = Integer.parseInt(rs.getString("AuthorID"));
			result.setAuthorID(a);
			closeCon(conn);
		}
		else {
			closeCon(conn);
			return false;
		}
		return true;
	}
	public Authors getAuthors(String AuthorName) 
			throws Exception{
		Authors result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sq2 = "select AuthorID,Organization from author where AuthorName =?";
		PreparedStatement state = conn.prepareStatement(sq2);
		state.setString(1,AuthorName);
		ResultSet rs=state.executeQuery();
		//将结果放入rs，从rs中遍历
		if(rs.next()){
			//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
			result=new Authors();
			result.setOrganization(rs.getString("Organization"));
			int a = Integer.parseInt(rs.getString("AuthorID"));
			result.setAuthorID(a);
			closeCon(conn);
		}
		return result;
	}
	public Authors getAuthorNamedao(int AuthorID) 
			throws Exception{
		Authors result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sq2 = "select AuthorName from author where AuthorID =?";
		PreparedStatement state = conn.prepareStatement(sq2);
		state.setInt(1,AuthorID);
		ResultSet rs=state.executeQuery();
		//将结果放入rs，从rs中遍历
		if(rs.next()){
			//从查询出来的集合中拿出了一条数据，表示的集合表中的第一个对象。
			result=new Authors();
			result.setAuthorName(rs.getString("AuthorName"));
			closeCon(conn);
		}
		return result;
	}
	public Authors InsertDB(String AuthorName,String Organization) 
			throws Exception{
		Authors result = null;//声明对象
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"insert into author(AuthorName,Organization) values ('"+AuthorName+"','"+Organization+"')";
		Statement state = conn.createStatement();
		state.executeUpdate(sql);
		closeCon(conn);
		return result;
	}
	/*
	public  ArrayList<Authors> getAuthorIDsdao(String keyword) throws Exception{
		ArrayList<Authors> AuthorList=new ArrayList<Authors>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = "select AuthorID FROM author where AuthorName like '%"+keyword+"%'";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Authors A = new Authors();
			A.setAuthorID(rs.getInt("AuthorID"));
			System.out.println("当前作者表ID（dao）："+rs.getInt("AuthorID"));
			AuthorList.add(A);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return AuthorList;
	}
	*/
	//以下为期刊信息输出界面调用方法
		public  ArrayList<Authors> getAuthors() throws Exception{
			ArrayList<Authors> AtuthorList = new ArrayList<Authors>();
			getCon();
			System.out.println("数据库连接成功");
			String sql = 
					"select author.*,COUNT(*) from author,paper " + 
					"where author.AuthorID = paper.AuthorID " + 
					"group by AuthorID order by COUNT(*) desc";
			PreparedStatement state = conn.prepareStatement(sql);
			ResultSet rs=state.executeQuery();
			while(rs.next()){
				Authors a = new Authors();
				a.setAuthorName(rs.getString("AuthorName"));
				a.setOrganization(rs.getString("Organization"));
				a.setCountpaper(rs.getInt("COUNT(*)"));
				AtuthorList.add(a);
			}
			rs.close();
			state.close();
			closeCon(conn);
			return AtuthorList;
		}
	//关闭数据库
	public void closeCon(Connection con)throws Exception{
		if(con!=null)
			System.out.println("连接关闭");
			con.close();
	}
}
