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
                    <%@ page import="java.text.DateFormatSymbols,java.text.SimpleDateFormat"%>
                    <%@ page import=" javax.mail.*, javax.mail.internet.*, javax.activation.*,com.sun.jersey.api.client.ClientResponse"%>
                    <html>
                    <head>
                    <title>middle</title>
                    </head>
                    <body>
                     
                    <%
                    session.setAttribute("session","True");
                    String q1="Select max(APP_NO) app_count from HR_APPLICATIONS  ";
                    int APP_NO=0;
                    String validator="";
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection conn=
                  //  DriverManager.getConnection("jdbc:oracle:thin:@dm01-scan.efuinsurance.com:1521/efuprd","efu_gis", "PRODgis");
                     DriverManager.getConnection("jdbc:oracle:thin:@oda01-scan.efuinsurance.com:1521/efuprd.efuinsurance.com", "efu_gis", "PRODgis");
                         String email="";
                               // conn = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");
                          Statement statement2 = conn.createStatement();    
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
                                    conn.close();  
            //                          String appfirstname =request.getParameter("first_name").toString();
            //                           String appmidname =request.getParameter("mid_name").toString();
            //                            String applastname =request.getParameter("last_name").toString();
            //                            String appfullname=appfirstname.trim()+"-"+appmidname.trim()+"-"+applastname.trim();
                                      
                    JSONObject jsonObj = new JSONObject();
                    String queryvalues="";
                        String withoutLastCharacter=""; String withoutLastCharacter2="";
                        String Query=""; String querykeys="";     
                     //request.getParameter(first_name)
                    MultivaluedMap formdata = new MultivaluedMapImpl();  Date mydate=null;
                    File file =null;
                   int maxFileSize = 300 * 1024;
                   int maxMemSize = 500 * 1024;
                   String fileName="";
                   String val="1"; 
                   String exval="1"; 
                      String fullname="";
                         String midname="";
                         String firstname="";
                         String lastname="";
                         
                   ServletContext context = pageContext.getServletContext();
                  String filePath ="//data//wls";
               //   String filePath ="D://Late_Coming_SpreadSheet";
                   String contentType = request.getContentType();
                   FileItem fi=null;
                   if ((contentType.indexOf("multipart/form-data") >= 0)) {
                  DiskFileItemFactory factory = new DiskFileItemFactory();
                  factory.setSizeThreshold(maxMemSize);
                 factory.setRepository(new File("//data//wls"));
              //   factory.setRepository(new File("D://Late_Coming_SpreadSheet"));
                  ServletFileUpload upload = new ServletFileUpload(factory);
                  upload.setSizeMax( maxFileSize );
                   try{ 
                     List fileItems = upload.parseRequest(request);
                     Iterator i = fileItems.iterator();
                     while ( i.hasNext () ) 
                     {
                         fi = (FileItem)i.next();
                       
                        if ( !fi.isFormField () )	
                        { 
                        String fieldName = fi.getFieldName();
                         fileName = fi.getName();
                         
                        boolean isInMemory = fi.isInMemory();
                        String format = "";
                        format=fileName.substring(fileName.lastIndexOf("."));
                       
                        if(!format.equals(".gif"))
                        { 
                      
                        fileName=APP_NO+"-"+format;
                        long sizeInBytes = fi.getSize();
                      //   fullname += " photo";         
                       if( fileName.lastIndexOf("//") >= 0 ){
                        file = new File( filePath + 
                        fileName.substring( fileName.lastIndexOf("//"))) ;
                        }else{
                        file = new File( filePath +"//" +
                        fileName.substring(fileName.lastIndexOf("//")+1)) ;
                        }
                       fi.write( file ) ;
                        }
                        }
                            if(fi.isFormField())
                        {
                        String fieldname = fi.getFieldName();
                            String fieldvalue = fi.getString(); 
                         
                          if (fieldname.equals("first_name")){firstname=fieldvalue;}
                          if (fieldname.equals("mid_name")){midname=fieldvalue;}
                          if (fieldname.equals("last_name")){lastname=fieldvalue;}
                          if( !(fieldname.equals("stage")) && !(fieldname.equals("addrad"))
                          &&!(fieldname.equals("first_name"))&&!(fieldname.equals("mid_name"))&&!(fieldname.equals("last_name"))
                   &&!(fieldname.equals("checky"))&&!(fieldname.equals("app_photo"))&& !(fieldname.equals("yno"))&& !(fieldname.equals("submit2")))   
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
                      querykeys+=fieldname+", ";
                      queryvalues+="'"+fieldvalue+"', ";
                      
                      
                      
                     jsonObj.put(fieldname, fieldvalue);
                    
                    formdata.add(fieldname, fieldvalue);
            //    out.print("<table width='100%' border='1' align='center'>");
            //    out.print("<tr bgcolor='#949494'>");
            //    out.print("<th>Param Name</th><th>Param Value(s)</th></tr>");
            //     out.print("<tr><td>" + fieldname + "</td>\n");
            //      out.println("<td> " + fieldvalue + "</td></tr>\n");
            //    out.print("</table>");
                     }   }
                         
                     }
                
                  }
                      catch(Exception ex)
                      {
                         System.out.println(ex);
                      }
                      }
                      
                
 //                            else if (
//                             fieldname.equals("PQ3_MAJOR")||fieldname.equals("PQ_3")||fieldname.equals("PQ3_INS")
//                             ||fieldname.equals("PQ2_MAJOR")||fieldname.equals("PQ_2")||fieldname.equals("PQ2_INS")
//                              ||fieldname.equals("LANG_3")||fieldname.equals("EX2_JOBT")||fieldname.equals("EX2_RESP")
//                              ||fieldname.equals("EX1_JOBT")||fieldname.equals("EX1_RESP")
//                             )
//                            {
//                           if(fieldvalue.equals("")||fieldvalue.isEmpty())
//                           {
//                           fieldvalue="-";
//                           }
//                            }
//                           else if ( !(fieldname.equals("EX2_FR")||fieldname.equals("EX2_TO")))
//                       {    if(fieldvalue.equals("")||fieldvalue.isEmpty())
//                           {
//                           fieldvalue="0";
//                           }
//                           }
                      
                      
                      fullname=firstname.trim()+" "+midname.trim()+" "+lastname.trim();
                      jsonObj.put("APP_NAME", fullname);
                      formdata.add("APP_NAME", fullname);
                       session.setAttribute("APP_NAME", fullname);
                       Connection connection = null;
                       int keycount=querykeys.length();
                   int valuecount=queryvalues.length();
                    int subkeylength=querykeys.length()-2;
                     int subvaluelength=queryvalues.length()-2;
                    // try{
                    
                     withoutLastCharacter2=querykeys.substring(0, subkeylength);
                             withoutLastCharacter = queryvalues.substring(0, subvaluelength);
                    Query="Insert into HR_APPLICATIONS ( APP_NO,APP_NAME, "+withoutLastCharacter2+",IMAGE_FILE_NAME ) VALUES ( null, '"+fullname +"',"+withoutLastCharacter+",'"+fileName+"' ) ";
                
                   Class.forName("oracle.jdbc.driver.OracleDriver");
                   connection=
                   DriverManager.getConnection("jdbc:oracle:thin:@oda01-scan.efuinsurance.com:1521/efuprd.efuinsurance.com", "efu_gis", "PRODgis");        
                 
                          Statement statement = connection.createStatement();    
            
                        try{
                               statement.execute(Query); 
                               // fi.write( file ) ;
                                   //   statement.execute("commit"); 
                                      validator="true";
                                      }
                                      catch(Exception ex)
                                      {
                                     // System.out.print("Insertion Error" +ex.getMessage());
                                      validator="false";
                                      }
            
                                  connection.close();
                                String to = email;  
                                
                                String from = "admin@efuinsurance.com";
                                 Properties properties = System.getProperties();
            
                  properties.setProperty("mail.smtp.host", "mail.efuinsurance.com");
                    Session session2 = Session.getDefaultInstance(properties);
                   
                   String emailmessage="";
                     if (!validator.equals("false"))
                   {try {
                     MimeMessage message = new MimeMessage(session2);
                     message.setFrom(new InternetAddress(from));
                     message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                     String name=session.getAttribute("APP_NAME").toString();
                     message.setSubject(name+" , thank you for Applying at EFU General Insurance LTD! ");
                     message.setText("Thank you for applying at EFU General for the Management Trainee Program!\nAs we receive a large number of applications, we would only be able to let you know if you are shortlisted.");
                     Transport.send(message);
                   message.getAllRecipients();
                  }catch (MessagingException mex) {
                    emailmessage= mex.getMessage();
                  }
                    }
                    if (!validator.equals("false"))
                        {              out.println("<script type=\"text/javascript\">");             
                       out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
                        out.println("location='firstpage.jsp';");
                       out.println("</script>");     
                       }
                       else 
                        { out.println("<script type=\"text/javascript\">");
                        out.println("alert('Although we thank you for choosing EFU General.\n Your application was not Submitted Succesfully.\n Kindly submit again');");}
                       out.println("location='firstpage.jsp';");
                       out.println("</script>");     
                        
                
                //tested okeyed 
            //     try {
            //				URL url = new URL("http://localhost:7101/travelservice-ViewController/resources/hr/trainee/");
            //				URLConnection urlconn = url.openConnection();
            //				urlconn.setDoOutput(true);
            //				urlconn.setRequestProperty("Content-Type", "application/json");
            //				urlconn.setConnectTimeout(5000);
            //				urlconn.setReadTimeout(5000);
            //				OutputStreamWriter outer = new OutputStreamWriter(urlconn.getOutputStream());
            //				outer.write(jsonObj.toString());
            //				outer.close();
            // 
            //				BufferedReader in = new BufferedReader(new InputStreamReader(urlconn.getInputStream()));
            // 
            //				while (in.readLine() != null) {
            //			System.out.println("\nCrunchify REST Service Invoked Successfully.." +in.toString());	}
            //				
            //				in.close();
            //			} catch (Exception e) {
            //				System.out.println("\nError while calling Crunchify REST Service");
            //				System.out.println(e);
            //			}
            //     
                                
                      %>
                    
                    </body>
                    </html>
 
   
      
