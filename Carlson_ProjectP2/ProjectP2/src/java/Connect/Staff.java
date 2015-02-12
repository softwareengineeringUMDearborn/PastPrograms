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
public class Staff extends Employee 
{
    String title;

    public Staff(String name, String address, String phone, String email, String title) 
    {
    	super(name, address, phone, email);
    	this.title = new String(title);
    }
    
    public Staff()
    {
    	super();
    	title = new String();
    }

    public Staff(String title)
    {
        this.title = title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }
    public String getTitle()
    {
        return this.title;
    }

    public String toString()
    {
        return "Staff: "+this.getName()+" has Title :" + this.title;
    }
}