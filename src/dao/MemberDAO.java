package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDTO;
import mybatis.config.DBService;

public class MemberDAO {

private SqlSessionFactory factory;
	
	private static MemberDAO instance;
	private MemberDAO() {
		factory = DBService.getInstance().getFactory();
	}
	public static MemberDAO getInstance() {
		if (instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	//member List
	public List<MemberDTO> memberList(){
		SqlSession ss = factory.openSession();
		List<MemberDTO> list = ss.selectList("dao.member.memberList");
		ss.close();
		return list;
	}
	
	//top 반환
	public List<MemberDTO> topList(){
		SqlSession ss = factory.openSession();
		List<MemberDTO> toplist = ss.selectOne("dao.member.topList");
		ss.close();
		return toplist;
				
	}
}