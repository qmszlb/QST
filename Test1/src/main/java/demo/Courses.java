package demo;

public class Courses { 
	private int CourseNumber;
	 private String CourseName;
	 private String CourseType;
	 private Teacher teacher;
	
	 public Courses() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	 public Courses(int CourseNumber,String CourseName,String CourseType,Teacher teacher) {
		super();
		this.CourseNumber=CourseNumber;
		this.CourseName=CourseName;
		this.CourseType=CourseType;
		this.teacher=teacher;
		// TODO Auto-generated constructor stub
	}
	 
	 public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
 public int getCourseNumber() {
		return CourseNumber;
	}
	public void setCourseNumber(int courseNumber) {
		CourseNumber = courseNumber;
	}
	public String getCourseName() {
		return CourseName;
	}
	public void setCourseName(String courseName) {
		CourseName = courseName;
	}
	public String getCourseType() {
		return CourseType;
	}
	public void setCourseType(String courseType) {
		CourseType = courseType;
	}
  public void Teach(){
	  System.out.println("-------����γ�����----------");
		System.out.println("�γ̱��:"+CourseNumber);
		System.out.println("�γ���:"+CourseName);
		System.out.println("�γ�����:"+CourseType);
		System.out.print("�ον�ʦ:");
		teacher.Put();
		System.out.println("  ");
	    teacher.OutPut();
	    
	    
  }
}
