package hellospring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {

	public static void main(String[] args) {
		//���������ļ�
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		//���student����
		Student stu = (Student) context.getBean("student");
		stu.sayHello();
	}

}
