package demo;

public class Teacher {
	public  String name;
	public String sex;
	public int age;
	public String title;//ְ��
	 
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	 public Teacher(String name, String sex,int age, String title) {
		super();
		this.name=name;
		this.sex=sex;
		this.age=age;
		this.title=title;
		// TODO Auto-generated constructor stub
	}

 public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
public void Put(){
	System.out.print(name);
}
public void OutPut(){
	System.out.println("-------�����ʦ����----------");
	System.out.println("��ʦ����:"+name);
	System.out.println("��ʦ�Ա�:"+sex);
	System.out.println("��ʦ����:"+age);
	System.out.println("��ʦְ��:"+title);
	
  }
}
