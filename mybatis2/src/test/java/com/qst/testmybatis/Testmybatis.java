package com.qst.testmybatis;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.qst.mapper.EmployeeMapper;
import com.qst.po.Employee;

public class Testmybatis {
	@Test
   public void testmybatis() throws IOException {
//		InputStream inputStream=Resources.getResourceAsStream("mybatis-config.xml");
//		
//		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
//		
//		
//		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		
		
//	   1��ȡ�����ļ�
	    InputStream inputStream=Resources.getResourceAsStream("mybatis-config.xml");
//	   2 ���������ļ�����sqlSessionFactory
	    SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
//     3ͨ��sqlSessionFactory����SqlSession
	   SqlSession sqlSession=sqlSessionFactory.openSession();
//	   4ͨ��SqlSession����������ݿ⣬������ѯ����ӡ��޸�
	   
	   
	   
//	   Employee employee=  sqlSession.selectOne("selectEmployeeById",2);
//////	
//		System.out.println(employee);
//		sqlSession.close();
//	    5�ر�SqlSession
		
		//  4 ����
//	    Employee employee=new Employee();
//	    employee.setName("��˹");
//	    employee.setEmpid(6);
//	    employee.setPosition("�ϵ�");
//		employee.setEmail("99999999");
//		employee.setGender(0);
//		
//		sqlSession.insert("insertEmployee",employee);
//		sqlSession.commit();
//		2ȫ��ѯ����������
		 List<Employee> employeelist=sqlSession.selectList("selectEmployee");
		 for(Employee employee:employeelist){
			 System.out.println(employee);
		 }
		 sqlSession.close();
//	        3ģ����ѯ���������ֲ�ѯ	
//		 List<Employee> employeelist=sqlSession.selectList("selectEmployeeByName","��");
//		 
//		 for(Employee employe:employeelist){
//			 System.out.println(employe);}
//		
//        5�޸�
//		Employee employee=new Employee();
//		employee.setEmpid(5);
//		employee.setPosition("��Ұ");
//		sqlSession.update("updateEmployee",employee);
//		sqlSession.commit();

//6  ɾ��
//	
//		sqlSession.delete("deleteEmployee",10);
//		sqlSession.commit();
//		
//		7.ͨ��mapper�ӿ�ʵ�ֲ���
//	   EmployeeMapper employeeMapper= sqlSession.getMapper(EmployeeMapper.class);
//		
//	   Employee employee=  employeeMapper.selectEmployeeById(3);
//	   System.out.println(employee);

	   //��̬sql
	  //1. if��̬��ѯ
//	  Employee employee=new  Employee();
//	  employee.setName("���޼���");
//    employee.setEmpid(15);
//	  List<Employee> employeelist=sqlSession.selectList("ifselectDynamicEmployee", employee);
//	  for(Employee employe:employeelist){
//    	 System.out.println(employe);
//    	 }
//	  
	  //2.choose,wen,otherwise��̬��ѯ
//	    Employee employee=new  Employee();
//		employee.setName("��˹");
//	    employee.setEmpid(14);
//	    employee.setPosition("�ϵ�");
//	    List<Employee> employeelist=sqlSession.selectList("chooseselectDynamicEmployee", employee);
//	    for(Employee employe:employeelist){
//    	System.out.println(employe);
//	    	 }
	    
//           3.where��̬��ѯ
//	    Employee employee=new  Employee();
//			employee.setName("��˹");
//		    employee.setEmpid(14);
//		    employee.setPosition("�ϵ�");
//		    List<Employee> employeelist=sqlSession.selectList("whereselectDynamicEmployee", employee);
//		    for(Employee employe:employeelist){
//	    	System.out.println(employe);
//		    	 }
	 //  4.1 trimǰ׺��̬��ѯ
//	      
//		    Employee employee=new  Employee();
//				employee.setName("��˹");
//			    employee.setEmpid(14);
//			    employee.setPosition("�ϵ�");
//			    List<Employee> employeelist=sqlSession.selectList("trimsqianelectDynamicEmployee", employee);
//			    for(Employee employe:employeelist){
//		    	System.out.println(employe);
//			    	 }
			    
			    //  4.2 trim
//			        Employee employee=new  Employee();
//					employee.setName("��������");
//				    employee.setGender(1);
//				    employee.setPosition("�е�");
//				    employee.setEmpid(14);
//				    sqlSession.update("trimshouelectDynamicEmployee", employee);
//				    sqlSession.commit();
				    
				    //    5.set
//				     Employee employee=new  Employee();
//						employee.setName("������");
////					    employee.setGender(1);
////					    employee.setPosition("����");
//					    employee.setEmpid(8);
//					    sqlSession.update("setDynamicEmployee", employee);
//					    sqlSession.commit();
	   
//                      6.bindģ����ѯ
//	    Employee employee=new  Employee();
//        employee.setName("������");
//        List<Employee> employeelist=sqlSession.selectList("selectBindEmployee", employee);
//        for(Employee employe:employeelist){
//   	    System.out.println(employe);}
////	   
	   //7ͨ��ע�⴫�ݲ���
//	   EmployeeMapper employeeMapper= sqlSession.getMapper(EmployeeMapper.class);
//       employeeMapper.updatetrimshouelectDynamicEmployee("������", 1);
//       sqlSession.commit();
  //   8,bindģ����ѯ
//	   EmployeeMapper employeeMapper= sqlSession.getMapper(EmployeeMapper.class);
//	   Employee employee=new  Employee();
//	List<Employee> employeelist=employeeMapper.selectBindEmployee("��",employee);
//	   for(Employee employe:employeelist){
//     	    System.out.println(employe);}
	   
//	   EmployeeMapper employeeMapper= sqlSession.getMapper(EmployeeMapper.class);
//
//	   List<Employee> employeelist=employeeMapper.selectBindEmployee("��");
//	   for(Employee employe:employeelist){
//     	    System.out.println(employe);}
	}
}