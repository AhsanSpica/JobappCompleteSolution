                    <!DOCTYPE html>
                    <%@ page import="java.io.*,java.util.*,java.util.Date" %>
                    <%@ page import="javax.ws.rs.core.MultivaluedMap"%>
                    <%@ page import="com.sun.jersey.core.util.MultivaluedMapImpl"%>
                    
                    
                    <%@ page import="org.apache.commons.io.output.*,javax.activation.*,java.io.IOException"%>
                    <%@ page import="org.json.HTTP,org.json.JSONException,org.json.JSONObject,java.util.Iterator" %>
                    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
                    <%@ page import="java.net.URLConnection,java.net.URL" %>
                    <%@ page import="com.sun.jersey.api.client.WebResource"%>
                    <%@ page import="com.sun.jersey.api.client.Client" %>
                    <%@ page import="org.apache.commons.fileupload.*" %>
                    <%@ page import="org.apache.commons.fileupload.disk.*" %>
                    <%@ page import="org.apache.commons.fileupload.servlet.*" %>
                    <%@ page import="java.sql.*" %>
                     <%@ page import="Attendance.DBCoding" %>
                    <%@ page import="java.text.DateFormatSymbols,java.text.SimpleDateFormat"%>
                    <%@ page import=" javax.mail.*, javax.mail.internet.*, javax.activation.*,com.sun.jersey.api.client.ClientResponse"%>
                    <html>
                    <head>
                    <title>middle</title>
                    </head>
                    <body>
                     
                    <%
                    session.setAttribute("session","True");
                  Connection connection = null;         
             
                    String q1="Select max(APP_NO) app_count from HR_APPLICATIONS  ";
                    int APP_NO=0;
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                   connection=
                  //  DriverManager.getConnection("jdbc:oracle:thin:@dm01-scan.efuinsurance.com:1521/efuprd","efu_gis", "PRODgis");
                 //      DriverManager.getConnection("jdbc:oracle:thin:@oda01-scan.efuinsurance.com:1521/efuprd.efuinsurance.com", "efu_gis", "PRODgis");
              DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");
                          Statement statement2 = connection.createStatement();    
                  ResultSet r =  statement2.executeQuery(q1); 
                        try{     
                   while (r.next()) {
                   APP_NO= Integer.parseInt(r.getString("app_count").toString());
                   
                   }
                     APP_NO=APP_NO+1;              }
                                      catch(Exception ex)
                                      {
                                      System.out.print("Insertion Error" +ex.getMessage());
                                      }
                                
                                 boolean validator=false;
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
                                     
                                  //   int random = (int)(Math.random() * 2000 + 1);
                                   //  String rand = Integer.toString(random);
                                     
                               ServletContext context = pageContext.getServletContext();
                               String filePath ="//data//wls//MTP_Photos";
                                    //                            String filePath ="D://Late_Coming_SpreadSheet";
                               String contentType = request.getContentType();
                               FileItem fi=null;
                               if ((contentType.indexOf("multipart/form-data") >= 0)) {
                             DiskFileItemFactory factory = new DiskFileItemFactory();
                              factory.setSizeThreshold(maxMemSize);
                              factory.setRepository(new File("//data//wls//MTP_Photos"));
                                      //            factory.setRepository(new File("D://Late_Coming_SpreadSheet"));
                              ServletFileUpload upload = new ServletFileUpload(factory);
                               upload.setSizeMax( maxFileSize );
                               List fileItems =null;
                               try{ 
                                   fileItems = upload.parseRequest(request);
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
                           
                             if (fieldname.equals("email"))
                            {
                            email = fieldvalue;
                            session.setAttribute("email", fieldvalue);
                            }
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
   
//                    out.print("<table width='100%' border='1' align='center'>");
//                out.print("<tr bgcolor='#949494'>");
//                out.print("<th>Param Name</th><th>Param Value(s)</th></tr>");
//                 out.print("<tr><td>" + fieldname + "</td>\n");
//                  out.println("<td> " + jsonObj.get(fieldname).toString() + "</td></tr>\n");
//                out.print("</table>");
                 //   formdata.add(fieldname, fieldvalue);
 
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
                      
                        fileName=firstname+"-"+midname+"-"+APP_NO+format;
                        long sizeInBytes = fi.getSize();
                    
                       if( fileName.lastIndexOf("//") >= 0 ){
                        file = new File( filePath + 
                        fileName.substring( fileName.lastIndexOf("//"))) ;
                        }else{
                        file = new File( filePath +"//" +
                        fileName.substring(fileName.lastIndexOf("//")+1)) ;
                        }
                      fi.write(file);
                      }
                         }

                       } // end of while 
                   }//end of try
                      catch(Exception ex)
                      {
                         out.println("<script type=\"text/javascript\">");
                        out.println("alert(' "+ex.getMessage()+"');");
                       out.println("</script>");   
                       }
                      }
                 
                       fullname=firstname.trim()+" "+midname.trim()+" "+lastname.trim();
                     
                       querykeys+="APP_NAME, IMAGE_FILE_NAME";
                       queryvalues+="'"+fullname+"', '"+fileName+"'";
                         
                       session.setAttribute("APP_NAME", fullname);
                    
                       int keycount=querykeys.length();
                   int valuecount=queryvalues.length();
                    int subkeylength=querykeys.length();
                     int subvaluelength=queryvalues.length();
                    // try{
                             withoutLastCharacter2 = querykeys;
                             withoutLastCharacter = queryvalues;
                    String Query2="";           
                      Query2="Insert into HR_APPLICATIONS ( APP_NO, "+querykeys+" ) VALUES ( null,"+queryvalues+" ) ";
               String to = email;  
                 String error="";
         try{    
          //   Class.forName("oracle.jdbc.driver.OracleDriver");
              //      
           //   connection
            //     =  DriverManager.getConnection("jdbc:oracle:thin:@oda01-scan.efuinsurance.com:1521/efuprd.efuinsurance.com", "efu_gis", "PRODgis");        
          //  = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");
                    Statement statement = connection.createStatement();    
             statement.executeUpdate(Query2); 
             
             //   DBCoding db = new DBCoding ();
           //   db.putfile(file);
   //          fi.write( file ) ;     
         //    connection.commit(); //as per sarfaraz at 01:57 11 march 2019        
                  //as per sarfaraz at 01:57 11 march 2019        
//                   out.println("<script type=\"text/javascript\">");             
//                          out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");//as per sarfaraz at 01:57 11 march 2019    to comment this out
//                  out.println("location='new_main.jsp';");                  
//                       out.println("</script>");    
                     out.println("|true|");    
 
            }   catch(Exception ex)
                      {
//                        out.println("<script type=\"text/javascript\">");
//                        out.println("alert('Although we thank you for choosing EFU General.\n Your application was not Submitted Succesfully.\n Kindly submit again');");
//                       out.println("location='new_main.jsp';");
//                       out.println("</script>");    
                    
                       out.println("|false+"+ex.getMessage()+"|");    
                      }
              %>         
                      
          <%
           
          //                    String from = "admin@efuinsurance.com";
//                    Properties properties = System.getProperties();
//            
//                    properties.setProperty("mail.smtp.host", "mail.efuinsurance.com");
//                    Session session2 = Session.getDefaultInstance(properties);
//                    String emailmessage="";
//                     MimeMessage message = new MimeMessage(session2);
//                     message.setFrom(new InternetAddress(from));
//                     message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
//                     String name=session.getAttribute("APP_NAME").toString();
//                     message.setSubject(name+" , thank you for Applying at EFU General Insurance LTD! ");
//                     message.setText("Thank you for applying at EFU General for the Management Trainee Program!\nAs we receive a large number of applications, we would only be able to let you know if you are shortlisted.");
//                     Transport.send(message);
//                   message.getAllRecipients();
//                      CallableStatement cStmt3 = null;                                       
//           	  cStmt3 = connection.prepareCall("{call INSERT_HR(?,?,?,?,  ?,?,?,?,?,?  ,?,?,?,?,  ?,?,?,?,?,?   ,?,?,?,?,  ?,?,?,?,?,?    ,?,?,?,?,  ?,?,?,?,?,?  ,?,?,?,?,  ?,?,?,?,?,?  ,?,?,?,?,  ?,?,?,?,?,?  ,?,?,?,?,  ?,?,?,?,?,? ,?,?,?,?,  ?,?,?,?,?,? ,?,?,?,?,  ?,?,?,?,?)}");
//
//                                          cStmt3.setString(1, jsonObj.get("APP_F_NAME").toString());
//                                          cStmt3.setString(2,  jsonObj.get("CNIC").toString());
//                                           cStmt3.setString(3, jsonObj.get("DOB").toString());
//                                           cStmt3.setString(4, jsonObj.get("GENDER").toString());
//                                          cStmt3.setString(5,  jsonObj.get("RES_ADD").toString());
//                                          cStmt3.setString(6,  jsonObj.get("PERM_ADD").toString());
//                                          cStmt3.setString(7,  jsonObj.get("CITY_ID") .toString());
//                                          cStmt3.setString(8,  jsonObj.get("email") .toString());
//                                          cStmt3.setString(9,  jsonObj.get("CELL_PH") .toString());
//                                          cStmt3.setString(10,  jsonObj.get("RES_PH") .toString());
//                                          cStmt3.setString(11,  jsonObj.get("WORK_PH") .toString());
//                                          cStmt3.setString(12,  jsonObj.get("PQ_1") .toString());
//                                          cStmt3.setString(13, jsonObj.get("PQ1_INS") .toString());
//                                          cStmt3.setString(14, jsonObj.get("PQ1_STATUS") .toString());
//                                         cStmt3.setString(15,   jsonObj.get("PQ1_MAJOR") .toString());
//                                         cStmt3.setString(16,   jsonObj.get("PQ1_PASS_YR") .toString());
//                                         cStmt3.setString(17,   jsonObj.get("EX1_COMP") .toString());
//                                         cStmt3.setString(18,   jsonObj.get("EX1_JOBT ") .toString());
//                                         cStmt3.setString(19,  jsonObj.get("EX1_RESP") .toString());
//                                        cStmt3.setString(20,    jsonObj.get("EX1_FR") .toString());
//                                        cStmt3.setString(21,    jsonObj.get("EX1_TO") .toString());
//                                         cStmt3.setString(22,  jsonObj.get("REF_NAME_1") .toString());
//                                          cStmt3.setString(23, jsonObj.get("REF_DESIG_1") .toString());
//                                        cStmt3.setString(24,    jsonObj.get("REF_ORG_1") .toString());
//                                        cStmt3.setString(25,    jsonObj.get("REF_ADD_1") .toString());
//                                        cStmt3.setString(26,    jsonObj.get("REF_PHONE_1") .toString());
//                                        cStmt3.setString(27,   jsonObj.get("REF_MOBILE_1") .toString());
//                                       cStmt3.setString(28,     jsonObj.get("REF_NAME_2") .toString());
//                                       cStmt3.setString(29,     jsonObj.get("REF_DESIG_2") .toString());
//                                       cStmt3.setString(30,     jsonObj.get("REF_ORG_2") .toString());
//                                       cStmt3.setString(31,     jsonObj.get("REF_ADD_2 ") .toString());
//                                       cStmt3.setString(32,    jsonObj.get("REF_PHONE_2") .toString());
//                                      cStmt3.setString(33,     jsonObj.get(" REF_MOBILE_2") .toString());
//                                      cStmt3.setString(34,      jsonObj.get("COMP_SKILL") .toString());
//                                      cStmt3.setString(35,      jsonObj.get("LANG_1") .toString());
//                                       cStmt3.setString(36,     jsonObj.get("LANG1_SP")  .toString());
//                                       cStmt3.setString(37,   jsonObj.get(" LANG1_RD") .toString());
//                                       cStmt3.setString(38,     jsonObj.get("LANG1_WR") .toString());
//                                      cStmt3.setString(39,      jsonObj.get("HOBBIES") .toString());
//                                      cStmt3.setString(40,     jsonObj.get("JUSTIFY") .toString());
//                                       cStmt3.setString(41,    jsonObj.get("MASTERS") .toString());
//                                      cStmt3.setString(42,     jsonObj.get("MAS_MAJOR") .toString());
//                                      cStmt3.setString(43,     jsonObj.get("MAS_UNIV") .toString());
//                                      cStmt3.setString(44,     jsonObj.get("MAS_GPA") .toString());
//                                      cStmt3.setString(45,     jsonObj.get("MAS_PASS_YR")  .toString());
//                                      cStmt3.setString(46,    jsonObj.get("MAS_CITY_ID ") .toString());
//                                      cStmt3.setString(47,    jsonObj.get("BACHELORS")  .toString());
//                                      cStmt3.setString(48,    jsonObj.get("BACH_MAJOR") .toString());
//                                      cStmt3.setString(49,    jsonObj.get("BACH_UNIV ") .toString());
//                                      cStmt3.setString(50,    jsonObj.get("BACH_GPA ") .toString());
//                                     cStmt3.setString(51,    jsonObj.get("BACH_PASS_YR")  .toString());
//                                     cStmt3.setString(52,     jsonObj.get("BACH_CITY_ID") .toString());
//                                     cStmt3.setString(53,     jsonObj.get("INTER") .toString());
//                                     cStmt3.setString(54,     jsonObj.get("INTER_MAJOR") .toString());
//                                     cStmt3.setString(55,     jsonObj.get("INTER_COLL") .toString());
//                                      cStmt3.setString(56,    jsonObj.get("INTER_GPA") .toString());
//                                     cStmt3.setString(57,     jsonObj.get("INTER_PASS_YR") .toString()); 
//                                      cStmt3.setString(58,    jsonObj.get("INTER_CITY_ID") .toString());
//                                      cStmt3.setString(59,    jsonObj.get("MATRIC") .toString());
//                                    cStmt3.setString(60,      jsonObj.get("MAT_MAJOR") .toString());
//                                     cStmt3.setString(61,     jsonObj.get("MAT_SCHOOL") .toString());
//                                     cStmt3.setString(62,     jsonObj.get("MAT_GPA") .toString());
//                                      cStmt3.setString(63,    jsonObj.get("MAT_PASS_YR") .toString());
//                                        cStmt3.setString(64,  jsonObj.get("MAT_CITY_ID") .toString());
//                                       cStmt3.setString(65,   jsonObj.get("PQ_2") .toString());
//                                       cStmt3.setString(66,   jsonObj.get("PQ2_INS")  .toString());
//                                       cStmt3.setString(67,   jsonObj.get("PQ2_STATUS") .toString());
//                                       cStmt3.setString(68,   jsonObj.get("PQ2_MAJOR") .toString());
//                                        cStmt3.setString(69,  jsonObj.get("PQ2_PASS_YR") .toString());
//                                        cStmt3.setString(70,   jsonObj.get("PQ_3")  .toString());
//                                        cStmt3.setString(71,  jsonObj.get("PQ3_INS")  .toString());
//                                        cStmt3.setString(72,  jsonObj.get("PQ3_STATUS") .toString());
//                                        cStmt3.setString(73,   jsonObj.get("PQ3_MAJOR") .toString());
//                                        cStmt3.setString(74,   jsonObj.get("PQ3_PASS_YR") .toString());
//                                        cStmt3.setString(75,   jsonObj.get("LANG_2")  .toString());
//                                        cStmt3.setString(76,  jsonObj.get("LANG2_SP") .toString());
//                                        cStmt3.setString(77,   jsonObj.get("LANG2_RD") .toString());
//                                        cStmt3.setString(78,   jsonObj.get("LANG2_WR")  .toString());
//                                        cStmt3.setString(79,   jsonObj.get("LANG_3") .toString()); 
//                                        cStmt3.setString(80,   jsonObj.get("LANG3_SP")  .toString());
//                                        cStmt3.setString(81,   jsonObj.get("LANG3_RD") .toString());
//                                        cStmt3.setString(82,    jsonObj.get("LANG3_WR") .toString()); 
//                                        cStmt3.setString(83,    jsonObj.get("EX2_COMP")  .toString());
//                                        cStmt3.setString(84,   jsonObj.get("EX2_JOBT") .toString());
//                                        cStmt3.setString(85,   jsonObj.get("EX2_RESP")  .toString());
//                                        cStmt3.setString(86,   jsonObj.get("EX2_FR") .toString());
//                                        cStmt3.setString(87,   jsonObj.get("EX2_TO") .toString());
//                                        cStmt3.setString(88,   jsonObj.get("APP_NAME") .toString());
//                                        cStmt3.setString(89,   jsonObj.get("IMAGE_FILE_NAME")  .toString());
//                                         cStmt3.execute(); 
                   
//                     try{  
//                     String from = "admin@efuinsurance.com";
//                    Properties properties = System.getProperties();
//            
//                    properties.setProperty("mail.smtp.host", "mail.efuinsurance.com");
//                    Session session2 = Session.getDefaultInstance(properties);
//                    String emailmessage="";
//                     MimeMessage message = new MimeMessage(session2);
//                     message.setFrom(new InternetAddress(from));
//                     message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
//                     String name=session.getAttribute("APP_NAME").toString();
//                     message.setSubject(name+" , thank you for Applying at EFU General Insurance LTD! ");
//                     message.setText("Thank you for applying at EFU General for the Management Trainee Program!\nAs we receive a large number of applications, we would only be able to let you know if you are shortlisted.");
//                     Transport.send(message);
//                   message.getAllRecipients();
//                   
//                      out.println("<script type=\"text/javascript\">");             
//                       out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
//                       out.println("location='new_main.jsp';");
//                       out.println("</script>");    
//                  
//                   }   catch(Exception ex)
//                      {
//                         out.println("<script type=\"text/javascript\">");
//                        out.println("alert('Although we thank you for choosing EFU General.\n Your application was not Submitted Succesfully.\n Kindly submit again');");
//                       out.println("location='new_main.jsp';");
//                       out.println("</script>");    
//                      }
//                         if (validator==true)
//                      {
//                  //    finally{
//                      out.println("<script type=\"text/javascript\">");             
//                       out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
//                       out.println("location='new_main.jsp';");
//                       out.println("</script>");    
//                    // }
//                     } 
//                     else
//                     {
//                       out.println("<script type=\"text/javascript\">");
//                        out.println("alert('Although we thank you for choosing EFU General.\n Your application was not Submitted Succesfully.\n Kindly submit again');");
//                       out.println("location='new_main.jsp';");
//                       out.println("</script>");    
//                     }
                      
//                      try{connection.close();
//                      }   catch(Exception ex)
//                      { }   
//                           if (validator)
//                        {  
//                      
//                       }
//                       else 
//                        {
//                        
//                        }    
                     %>
          
                    </body>
                    </html>
 
   
      
