package hotel.session;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import hotel.model.Customer;
import hotel.model.Eventinfo;

public class EventinfoRepository {

	String namespace="hotel.mapper.EventinfoMapper";
	
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
	
	public Integer insertEventinfo( Eventinfo evt){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			String statment = namespace + ".insertEventinfo";
			int result = sqlSess.insert(statment, evt);
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

	public List<Eventinfo> selectEventinfo() {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			String statment = namespace + ".selectEventinfo";
			return sqlSess.selectList(statment);
		}finally{
			sqlSess.close();
		}
	}
	
	public Eventinfo selectEventinfoById(String evNum) {
		SqlSession sqlSess = getSelSessionFactiory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("evNum", evNum);
			String statment = namespace + ".selectEventinfoById";
			return sqlSess.selectOne(statment,map);
		}finally{
			sqlSess.close();
		}
	}
}
