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
public class EditStudentInfo {
static ConnectionFactory connection = new ConnectionFactory(true);
        
        public static void changeStudentInfo(int findID, String newName, String newAddress, String newPhone, String newEmail){
            
        try 
        {
            connection.load();
            
            for (int i = 0; i < connection.student.size();i++){
                    if(connection.student.get(i).ID == findID){
                        connection.student.get(i).setName(newName);
                        connection.student.get(i).setAddress(newAddress);
                        connection.student.get(i).setPhone(newPhone);
                        connection.student.get(i).setEmail(newEmail);
                        
                        
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
