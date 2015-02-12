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
public class EditJavaCourse {
    static ConnectionFactory connection = new ConnectionFactory(true);
        
        public static void changecourse(int findID, int newID, String newTitle, String newDays, int newMax_Capacity, int newCredit){
            
        try 
        {
            connection.load();
            
            for (int i = 0; i < connection.course.size();i++){
                    if(connection.course.get(i).ID == findID){
                        connection.course.get(i).credit = newCredit;
                        connection.course.get(i).max_capacity = newMax_Capacity;
                        connection.course.get(i).days = newDays;
                        connection.course.get(i).title = newTitle;
                        connection.course.get(i).ID = newID;
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
