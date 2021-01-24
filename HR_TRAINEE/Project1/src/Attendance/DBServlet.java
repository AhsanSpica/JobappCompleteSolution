            package Attendance;
            
            import com.sun.jersey.core.util.MultivaluedMapImpl;
            
            import java.io.File;
            import java.io.IOException;
            import java.io.PrintWriter;
            
            import java.sql.*;
            
            
            import org.apache.commons.fileupload.servlet.*;
            
            import java.util.Date;
            
            import java.util.Iterator;
            import java.util.List;
            
            import javax.servlet.*;
            import javax.servlet.http.*;
            
            import javax.ws.rs.core.MultivaluedMap;
            
            import org.apache.commons.fileupload.FileItem;
            
            import org.apache.commons.fileupload.disk.DiskFileItemFactory;
            
            import org.json.JSONObject;
            
           
       //  @WebServlet("/dbServlet")
            public class DBServlet extends HttpServlet 
            {
                
            private static final String CONTENT_TYPE = "text/html; charset=windows-1252";
        
            public void init(ServletConfig config) throws ServletException {
                super.init(config);
            }
        
            public void doGet(HttpServletRequest request,
                              HttpServletResponse response) throws ServletException,
                                                                   IOException {
        
        
        
//        session.setAttribute("session","True");
        //                    String q1="Select max(APP_NO) app_count from HR_APPLICATIONS  ";
        //                    int APP_NO=0;
                                //   boolean validator=false;

                                 //    boolean valid=true;
                                        String email="";
                             
                                       JSONObject jsonObj = new JSONObject();
                                   String queryvalues="";
                                       String withoutLastCharacter=""; String withoutLastCharacter2="";
                                       String Query=""; String querykeys="";     
                                    //request.getParameter(first_name)
                                   MultivaluedMap formdata = new MultivaluedMapImpl();  Date mydate=null;
                                   File file =null;
                                  int maxFileSize = 5000 * 1024;
                                  int maxMemSize = 5000 * 1024;
                                  String fileName="";
                                  String val="1"; 
                                  String exval="1"; 
                                     String fullname="";
                                        String midname="";
                                        String firstname="";
                                        String lastname="";
                                        
                            //      ServletContext context = pageContext.getServletContext();
                         //     String filePath ="//data//wls";
                              String filePath ="D://Late_Coming_SpreadSheet";
                                  String contentType = request.getContentType();
                                  FileItem fi=null;
                                  if ((contentType.indexOf("multipart/form-data") >= 0)) {
                                DiskFileItemFactory factory = new DiskFileItemFactory();
                                 factory.setSizeThreshold(maxMemSize);
                               //       factory.setRepository(new File("//data//wls"));
                              factory.setRepository(new File("D://Late_Coming_SpreadSheet"));
                                 ServletFileUpload upload = new ServletFileUpload(factory);
                                  upload.setSizeMax( maxFileSize );
                                  try{ 
                                    List fileItems = upload.parseRequest(request);
                                    Iterator i = fileItems.iterator();
                                      while ( i.hasNext () ) 
                                    {
                                        fi = (FileItem)i.next();
                                      
                           
                                if(fi.isFormField())
                           {
                           
                               String fieldname = fi.getFieldName();
                               String fieldvalue = fi.getString(); 
                            
                             if (fieldname.equals("first_name")){firstname=fieldvalue;}
                             if (fieldname.equals("mid_name")){midname=fieldvalue;}
                             if (fieldname.equals("last_name")){lastname=fieldvalue;}
                             if(   !(fieldname.equals("addrad"))
                          &&!(fieldname.equals("seledu")) &&!(fieldname.equals("first_name"))&&!(fieldname.equals("mid_name"))&&!(fieldname.equals("last_name"))
                      &&!(fieldname.equals("checky"))&&!(fieldname.equals("app_photo")) && !(fieldname.equals("submit2")))   
                    {
                              
//                                if (fieldname.equals("email"))
//                               {
//                               email = fieldvalue;
//                            //   session.setAttribute("email", fieldvalue);
//                               }
                               if (fieldname.equals("PQ1_PASS_YR")||fieldname.equals("MAS_PASS_YR")||fieldname.equals("PQ2_PASS_YR")||fieldname.equals("PQ3_PASS_YR"))
                               {
                              if(fieldvalue.equals("yet to pass")||(fieldvalue.equals("Year_of_Passing")))
                              {
                              fieldvalue="0000";
                              }
                               }
                       
                            jsonObj.put(fieldname, fieldvalue);     
                                if (
                              fieldname.equals("EX1_FR")||fieldname.equals("EX1_TO")
                              || fieldname.equals("EX2_FR")||fieldname.equals("EX2_TO")||fieldname.equals("DOB")
                              )
                              { if(!(fieldvalue.equals("")||fieldvalue.isEmpty()))
                              {
                             fieldvalue=" to_date('"+fieldvalue+"','dd/mm/yyyy')";
                              querykeys+=fieldname+", ";
                         queryvalues+=""+fieldvalue+", ";
                              }
                               }
                           else{      
                         querykeys+=fieldname+", ";
                         queryvalues+="'"+fieldvalue+"', ";
                         }
                         }
                         
                        }
                        if ( !fi.isFormField () )  
                           { 
                          
                           String fieldName = fi.getFieldName();
                            fileName = fi.getName();
                            
                           boolean isInMemory = fi.isInMemory();
                           String format = "";
                           format=fileName.substring(fileName.lastIndexOf("."));
                          
                           if(!format.equals(".gif"))
                           { 
                         
                           fileName=firstname.trim()+" "+midname.trim()+" "+lastname.trim()+format;
                           long sizeInBytes = fi.getSize();
                         //   fullname += " photo";         
                          if( fileName.lastIndexOf("//") >= 0 ){
                           file = new File( filePath + 
                           fileName.substring( fileName.lastIndexOf("//"))) ;
                           }else{
                           file = new File( filePath +"//" +
                           fileName.substring(fileName.lastIndexOf("//")+1)) ;
                           }
                         // 
                           }
                           
                           }

                          } // end of while 
                      }//end of try
                         catch(Exception ex)
                         {
                            response.setContentType(CONTENT_TYPE);
                             PrintWriter out = response.getWriter();
                           //  out.println("<html>");
                          //   out.println("<head><title>DBServlet</title></head>");
                          //   out.println("<body>");
                             out.println("<script type='text/javascript'>");
                             out.println("alert(' "+ex.getMessage()+"');");
                              out.println("location='new_main.jsp';");
                             out.println("</script>");
                          //   out.println("</body></html>");
                             out.close();
                          }
                         }
                    
                  fullname=firstname.trim()+" "+midname.trim()+" "+lastname.trim();
                        
                          querykeys+="APP_NAME, IMAGE_FILE_NAME";
                          queryvalues+="'"+fullname+"', '"+fileName+"'";
                         
                                withoutLastCharacter2=querykeys;
                                withoutLastCharacter = queryvalues;
                                
                      String Query2="";           
                         Query2="Insert into HR_APPLICATIONS ( APP_NO, "+querykeys+" ) VALUES ( null,"+queryvalues+" ) ";
         
                      Connection connection = null;
                   String error="";
            try{    
                Class.forName("oracle.jdbc.driver.OracleDriver");
                          
                 connection
                  //    =  DriverManager.getConnection("jdbc:oracle:thin:@oda01-scan.efuinsurance.com:1521/efuprd.efuinsurance.com", "efu_gis", "PRODgis");        
                  = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");
                     Statement statement = connection.createStatement();    
                statement.executeUpdate(Query2); 
                connection.commit();
                  
              //  valid =true;
                
              fi.write( file ) ;
                   response.setContentType(CONTENT_TYPE);
                   PrintWriter out = response.getWriter();
                 
                   out.println("<script type='text/javascript'>");             
                   out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
                     out.println("location='new_main.jsp';");
                     out.println("</script>"); 
                 
                   out.close();
                         
        
               }   catch(Exception ex)
                         {
                
                 response.setContentType(CONTENT_TYPE);
                 PrintWriter out = response.getWriter();
//                 out.println("<html>");
//                 out.println("<head><title>DBServlet</title></head>");
//                 out.println("<body>");
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Although we thank you for choosing EFU General.\n Your application was not Submitted Succesfully.\n Kindly submit again');");
                 out.println("location='new_main.jsp';");
                 out.println("</script>");
              //   out.println("</body></html>");
                 out.close();
                          }
                         
//                       if (valid)   
//                       {
//                           try{   fi.write( file ) ;
//                               }   catch(Exception ex)
//                                         {}
//                           finally
//                           {  
//                               response.setContentType(CONTENT_TYPE);
//                               PrintWriter out = response.getWriter();
//                          //     out.println("<html>");
//                          //     out.println("<head><title>DBServlet</title></head>");
//                          //     out.println("<body>");
//                               out.println("<script type='text/javascript'>");             
//                               out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
//                                 out.println("location='new_main.jsp';");
//                                 out.println("</script>"); 
//                          //     out.println("</body></html>");
//                               out.close();
//                               }
//                           }
        
 
    }

    public void doPost(HttpServletRequest request,
                       HttpServletResponse response) throws ServletException,
                                                            IOException {
        response.setContentType(CONTENT_TYPE);
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>DBServlet</title></head>");
        out.println("<body>");
        out.println("<p>The servlet has received a POST. This is the reply.</p>");
        out.println("</body></html>");
        out.close();
    }
}
