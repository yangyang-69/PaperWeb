package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.*;
import daos.*;

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
	//search.jsp中论文信息查找
	public  ArrayList<Papers> getPaper(String Paperkey) throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select * from paper,author,minority,Source where " + 
				"paper.AuthorID = author.AuthorID " + 
				"and paper.MinorityID = minority.MinorityID " + 
				"and paper.SourceID = source.SourceID " + 
				"and (Title like '%"+Paperkey+"%'or Summary like'%"+Paperkey+"%')";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			p.setAuthorName(rs.getString("AuthorName"));
			p.setSummary(rs.getString("Summary"));
			p.setSourceName(rs.getString("SourceName"));
			p.setPubTime(rs.getString("PubTime"));
			p.setVolume(rs.getInt("Volume"));
			p.setPeriod(rs.getInt("Period"));
			p.setPageCount(rs.getString("PageCount"));
			p.setCited(rs.getInt("Cited"));
			p.setDownloaded(rs.getInt("Downloaded"));
			p.setMinorityName(rs.getString("MinorityName"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}
	public  ArrayList<Papers> getPaperAuthor(String keyword) throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select * from paper,author,minority,Source where paper.AuthorID = author.AuthorID " + 
				"and paper.MinorityID = minority.MinorityID " + 
				"and paper.SourceID = source.SourceID " + 
				"and authorName like '%"+keyword+"%'";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			p.setAuthorName(rs.getString("AuthorName"));
			p.setSummary(rs.getString("Summary"));
			p.setSourceName(rs.getString("SourceName"));
			p.setPubTime(rs.getString("PubTime"));
			p.setVolume(rs.getInt("Volume"));
			p.setPeriod(rs.getInt("Period"));
			p.setPageCount(rs.getString("PageCount"));
			p.setCited(rs.getInt("Cited"));
			p.setDownloaded(rs.getInt("Downloaded"));
			p.setMinorityName(rs.getString("MinorityName"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}
	public  ArrayList<Papers> getPaperMinority(String keyword) throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select * from paper,author,minority,Source where " + 
				"paper.AuthorID = author.AuthorID " + 
				"and paper.MinorityID = minority.MinorityID " + 
				"and paper.SourceID = source.SourceID " + 
				"and MinorityName like '%"+keyword+"%'";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			p.setAuthorName(rs.getString("AuthorName"));
			p.setSummary(rs.getString("Summary"));
			p.setSourceName(rs.getString("SourceName"));
			p.setPubTime(rs.getString("PubTime"));
			p.setVolume(rs.getInt("Volume"));
			p.setPeriod(rs.getInt("Period"));
			p.setPageCount(rs.getString("PageCount"));
			p.setCited(rs.getInt("Cited"));
			p.setDownloaded(rs.getInt("Downloaded"));
			p.setMinorityName(rs.getString("MinorityName"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}
	public  ArrayList<Papers> getPaperSource(String keyword) throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select * from paper,author,minority,Source where " + 
				"paper.AuthorID = author.AuthorID " + 
				"and paper.MinorityID = minority.MinorityID " + 
				"and paper.SourceID = source.SourceID " + 
				"and SourceName like '%"+keyword+"%'";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			p.setAuthorName(rs.getString("AuthorName"));
			p.setSummary(rs.getString("Summary"));
			p.setSourceName(rs.getString("SourceName"));
			p.setPubTime(rs.getString("PubTime"));
			p.setVolume(rs.getInt("Volume"));
			p.setPeriod(rs.getInt("Period"));
			p.setPageCount(rs.getString("PageCount"));
			p.setCited(rs.getInt("Cited"));
			p.setDownloaded(rs.getInt("Downloaded"));
			p.setMinorityName(rs.getString("MinorityName"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}

	public  ArrayList<Papers> gethotPapers() throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select Title,MinorityName,AuthorName,Downloaded from paper,minority,author " + 
				"where (paper.MinorityID = minority.MinorityID " + 
				"and paper.AuthorID = author.AuthorID) " + 
				"ORDER BY Downloaded desc limit 5";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			//p.setAuthorName(rs.getString("AuthorName"));
			p.setDownloaded(rs.getInt("Downloaded"));
			//p.setMinorityName(rs.getString("MinorityName"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}
	public  ArrayList<Papers> getPaperPubTimeorder() throws Exception{
		ArrayList<Papers> PaperList = new ArrayList<Papers>();
		getCon();
		System.out.println("数据库连接成功");
		String sql = 
				"select Title,MinorityName,AuthorName,SourceName,PubTime " + 
				"from paper,minority,author,source " + 
				"where paper.AuthorID = author.AuthorID " + 
				"and paper.MinorityID = minority.MinorityID " + 
				"and paper.SourceID = source.SourceID " + 
				"order by PubTime desc limit 10";
		PreparedStatement state = conn.prepareStatement(sql);
		ResultSet rs=state.executeQuery();
		while(rs.next()){
			Papers p = new Papers();
			p.setTitle(rs.getString("Title"));
			p.setAuthorName(rs.getString("AuthorName"));
			p.setSourceName(rs.getString("SourceName"));
			p.setMinorityName(rs.getString("MinorityName"));
			p.setPubTime(rs.getString("PubTime"));
			PaperList.add(p);
		}
		rs.close();
		state.close();
		closeCon(conn);
		return PaperList;
	}
	
	//关闭数据库
	public void closeCon(Connection con)throws Exception{
		if(con!=null)
			System.out.println("连接关闭");
			con.close();
	}
}
