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

public class Faculty extends Employee 
{
    String office_hours;
    int rank;
    
    public Faculty()
    {
    	super();
    	office_hours = new String();
    }

    public Faculty(String name, String address, String phone, String email, String officeHours2, int rank) 
    {
    super(name, address, phone, email);
    //this.name = name;
    office_hours = new String(officeHours2);
    this.rank = rank ;
    }

    public String toString()
    {
        return "Faculty: "+this.getName()+" has rank :" + this.rank;
    }
}
