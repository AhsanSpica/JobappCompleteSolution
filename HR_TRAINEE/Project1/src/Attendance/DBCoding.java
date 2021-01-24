package Attendance;

import java.io.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

import org.apache.commons.fileupload.FileItem;

public class DBCoding {
    public DBCoding() {
        super();
    }

  
    public String putfile(File filedoc)
    
    {  //ArrayList<String> result = new ArrayList<String>();
            Connection connection = null; ResultSet resultset;
           String result="";
           
            
            try{  
                
                    FileItem fi=null;  
                    fi.write( filedoc ) ;         
                    result="success";
                }
            catch(Exception exp)
            {
              result="fail";
          }
            return result;
            
            }
    
    
}
