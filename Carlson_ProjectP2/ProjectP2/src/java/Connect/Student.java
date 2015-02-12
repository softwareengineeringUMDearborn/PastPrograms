/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

/**
 *
 * @author Cody
 */
public class Student extends Person 
{

    public String class_status;

    public Student()
    {
    	super();
    	class_status = new String();
    }
    
    public Student(String name, String address, String phone, String email, String classStatus) 
    {
    	super(name, address, phone, email);
    	this.class_status = classStatus;
    }
    public String toString()
    {
        return "Student: "+this.getName()+" has Status: " + this.class_status;
    }

}
