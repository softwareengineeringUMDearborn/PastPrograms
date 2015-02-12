/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

/**
 *
 * @author Cody2
 */
public class EditFacultyInfo {
static ConnectionFactory connection = new ConnectionFactory(true);
        
        public static void changeFacultyInfo(int findID, String newName, String newAddress, String newPhone, String newEmail){
            
        try 
        {
            connection.load();
            
            for (int i = 0; i < connection.faculty.size();i++){
                    if(connection.faculty.get(i).ID == findID){
                        connection.faculty.get(i).setName(newName);
                        connection.faculty.get(i).setAddress(newAddress);
                        connection.faculty.get(i).setPhone(newPhone);
                        connection.faculty.get(i).setEmail(newEmail);
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