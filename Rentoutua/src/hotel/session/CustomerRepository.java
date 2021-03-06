package hotel.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import hotel.model.Accommodation;
import hotel.model.Customer;
import hotel.model.Payment;
import hotel.model.Reservation;

public class CustomerRepository {
	
	String namespace="hotel.mapper.CustomerMapper";
	
	private SqlSessionFactory getSelSessionFactiory(){
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try{
			inputStream = Resources.getResourceAsStream(resource);
			
		}catch(Exception ex){
			
		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		return factory;
	}
	
//	public List<Comment> selectComment(){
//		SqlSession sqlSess = getSelSessionFactiory().openSession();
//		try{
//			return sqlSess.selectList(namespace+".selectComment");
//		}finally{
//			sqlSess.close();
//		}
//	}
//	public Integer modifyComment(Comment c){
//		SqlSession sqlSess = getSelSessionFactiory().openSession();
//		try{
//			String statment = namespace + ".modifyComment";
//			int result = sqlSess.update(statment, c);
//			if(result > 0){
//				sqlSess.commit();
//				//JDBC : auto-commit, Mybatis : ?��?��
//			}else{
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		return 0;
//	}
//	
//	public Integer deleteComment(int commentNo){
//		SqlSession sqlSess = getSelSessionFactiory().openSession();
//		try{
//			HashMap map = new HashMap();
//			map.put("commentNo", commentNo);
//			int result = sqlSess.delete(namespace+".deleteComment" , map);
//			if(result > 0){
//				sqlSess.commit();
//				//JDBC : auto-commit, Mybatis : ?��?��
//			}else{
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		return 0;
//	}
	
	
	public Integer insertCustomer( Customer cus){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			System.out.println(cus.getCuEmail());
			String statment = namespace + ".insertCustomer";
			int result = sqlSess.insert(statment, cus);
			if(result > 0){
				System.out.println("DBĿ�� ����");
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : ?��?��
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}

	public Customer selectCustomerById(String email, String pass) {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("cuEmail", email);
			map.put("cuPass", pass);
			return sqlSess.selectOne(namespace+".selectCustomer" , map);
		}finally{
			sqlSess.close();
		}
	}

	public Customer selectCustomerByInfo(String email) {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			
			return sqlSess.selectOne(namespace+".selectInfo" , email);
		}finally{
			sqlSess.close();
		}
	}


	
}
