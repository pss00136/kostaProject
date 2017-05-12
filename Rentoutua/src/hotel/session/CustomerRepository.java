package hotel.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import hotel.model.Customer;

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
}
