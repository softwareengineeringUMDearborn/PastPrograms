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
import java.util.Date;

public class Execution 
{

    public static void main(String[] args) 
    {
        ConnectionFactory connection = new ConnectionFactory(true);
        
        try 
        {
			// An example of how to load the database into a set of ArrayLists, modifying some values, and saving the arrays back to the database
        	connection.load();
			connection.print_size();
			connection.student.get(0).setName("John William");
			connection.staff.get(0).setName("Krish Starz");
			connection.registration.get(0).grade = new String("A");
			connection.faculty.get(0).setName("Max Ruinn");
			connection.course.get(0).credit = 4;
                        connection.course.size();
                        for (int i =0; i<connection.course.size();i++){
                        if(connection.course.get(i).ID == 50){
                        
                    }
                        }
			connection.save();
		} 
        catch (Exception e) 
		{
			e.printStackTrace();
		}
    	
    }
}