package hotel.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import hotel.model.Accommodation;
import hotel.model.Payment;
import hotel.model.Reservation;

public class ReservationRepository {
	
	String namespace="hotel.mapper.ReservationMapper";
	
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
	

	public List<Accommodation> selectReservationList(String brNum,int revPeople) {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("brNum", brNum);
			map.put("accPeople", revPeople);
			return sqlSess.selectList(namespace+".selectAcc",map);
		}finally{
			sqlSess.close();
		}
	}


	public String selectReservationByName(String brNum) {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			return sqlSess.selectOne(namespace+".selectBrName",brNum);
		}finally{
			sqlSess.close();
	}
}


	public int insertRes(Reservation res) {
		//JDBC : Connection, Mybatis : SqlSession
				SqlSession sqlSess = getSelSessionFactiory().openSession();
				int reNum = 0;
				try{
					String statment = namespace + ".insertRes";
					String statement = namespace + ".selectRes";
					int result = sqlSess.insert(statment, res);
					reNum = sqlSess.selectOne(statement);
					
					if(result > 0){
						sqlSess.commit();
						//JDBC : auto-commit, Mybatis : ?��?��
					}else{
						sqlSess.rollback();
					}
				}finally{
					sqlSess.close();
				}
				return reNum;
	}


	public int insertPay(Payment pay) {
		//JDBC : Connection, Mybatis : SqlSession
				SqlSession sqlSess = getSelSessionFactiory().openSession();
				try{
					String statment = namespace + ".insertPay";
					int result = sqlSess.insert(statment, pay);
					if(result > 0){
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
}
