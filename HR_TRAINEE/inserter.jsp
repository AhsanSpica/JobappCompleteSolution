<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.util.Date" %>
<%@ page import="javax.ws.rs.core.MultivaluedMap,com.sun.jersey.core.util.MultivaluedMapImpl"%>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="javax.activation.*,java.io.IOException"%>
<%@ page import="org.json.HTTP,org.json.JSONException,org.json.JSONObject,java.util.Iterator" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.net.URLConnection,java.net.URL" %>
<%@ page import="com.sun.jersey.api.client.WebResource"%>
<%@ page import="com.sun.jersey.api.client.Client" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*,java.sql.*" %>
<%@ page import="java.text.DateFormatSymbols,java.text.SimpleDateFormat"%>
<%@ page import=" javax.mail.*, javax.mail.internet.*, javax.activation.*"%>
<html>
<head>
<title>middle</title>
</head>
<body>



<% session.setAttribute("session","True");

JSONObject jsonObj = new JSONObject();
        String queryvalues="";
            String withoutLastCharacter=""; String withoutLastCharacter2="";
            String Query=""; String querykeys="";          
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
   ServletContext context = pageContext.getServletContext();
//String filePath ="//data//wls";
 String filePath ="D://Late_Coming_SpreadSheet";
 String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
//factory.setRepository(new File("//data//wls"));
factory.setRepository(new File("D://Late_Coming_SpreadSheet"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      String email="";
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
           
       
            if ( !fi.isFormField () )	
            { 
            String fieldName = fi.getFieldName();
             fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
           if( fileName.lastIndexOf("//") >= 0 ){
            file = new File( filePath + 
            fileName.substring( fileName.lastIndexOf("//"))) ;
            }else{
            file = new File( filePath +"//" +
            fileName.substring(fileName.lastIndexOf("//")+1)) ;
            }
            fi.write( file ) ;
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
   &&!(fieldname.equals("app_photo"))&& !(fieldname.equals("yno"))&& !(fieldname.equals("submit2")))   
     {
                if (fieldname.equals("email"))
                {
                session.setAttribute("email", fieldvalue);
                }
                if (fieldname.equals("MAT_PASS_YR")||fieldname.equals("MAS_PASS_YR")
                ||fieldname.equals("BACH_PASS_YR")||fieldname.equals("INTER_PASS_YR")
                ||fieldname.equals("PQ1_PASS_YR")||fieldname.equals("PQ2_PASS_YR")||fieldname.equals("PQ3_PASS_YR")
                )
                {
               fieldvalue="yet to pass";fieldvalue="0000";
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
      fullname=firstname+" "+midname+" "+lastname;
       session.setAttribute("APP_NAME", fullname);
       Connection connection = null;
       int keycount=querykeys.length();
   int valuecount=queryvalues.length();
    int subkeylength=querykeys.length()-2;
     int subvaluelength=queryvalues.length()-2;
    // try{
    
     withoutLastCharacter2=querykeys.substring(0, subkeylength);
             withoutLastCharacter = queryvalues.substring(0, subvaluelength);
    Query="Insert into HR_APPLICATIONS ( APP_NO,APP_NAME, "+withoutLastCharacter2+" ) VALUES ( null, '"+fullname +"',"+withoutLastCharacter+" ) ";
//}
//catch(Exception ex)
//{
//out.println("The error  :   "+ex.getMessage());
//}
 // out.println("" + Query + "\n");
   Class.forName("oracle.jdbc.driver.OracleDriver");
                        connection = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");
              Statement statement = connection.createStatement();    
                                        
            try{
                   statement.execute(Query); 
                          }
                          catch(Exception ex)
                          {
                          System.out.print("Insertion Error" +ex.getMessage());
                          }
                        
                      connection.close();
                    String to = session.getAttribute("email").toString();  
                    
                    String from = "admin@efuinsurance.com";
                     Properties properties = System.getProperties();

      properties.setProperty("mail.smtp.host", "mail.efuinsurance.com");
        Session session2 = Session.getDefaultInstance(properties);
        try {
         MimeMessage message = new MimeMessage(session2);
         message.setFrom(new InternetAddress(from));
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
         String name=session.getAttribute("APP_NAME").toString();
         message.setSubject(name+" , thank you for Applying at EFU General Insurance LTD! ");
         message.setText("Thank you for applying at efu for the management trainee Program!\nAs we receive a large number of applications, we would only be able to let you know if you are shortlisted.");
         Transport.send(message);
        
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
                  out.println("<script type=\"text/javascript\">");  
   out.println("alert('Thank You for choosing EFU! Application Submitted Succesfully!');");
   out.println("location='firstpage.jsp';");
   out.println("</script>");     
                    
  %>

</body>
</html>
  <!--
//  Map<String,String[]> params = request.getParameterMap();
//  for (Map.Entry<String,String[]> entry : params.entrySet()) {
//   if( !(entry.getKey().equals("stage")) && !(entry.getKey().equals("addrad"))
//   &&!(entry.getKey().equals("app_photo"))&& !(entry.getKey().equals("yno"))&& !(entry.getKey().equals("submit2")))
//   {
//   String v[] = entry.getValue();
//   String s="";
//    Object o = (v.length == 1) ? v[0] : v;
//    s=o.toString();
//         querykeys+=entry.getKey()+", ";
//          queryvalues+="'"+s+"', ";
//    jsonObj.put(entry.getKey(), s);
//    formdata.add(entry.getKey(), s);
//    }
//  }

 //  Enumeration paramNames = request.getParameterNames();
//<table width="100%" border="1" align="center">
//<tr bgcolor="#949494">
//<th>Param Name</th><th>Param Value(s)</th></tr>
  // while(paramNames.hasMoreElements()) {
  //    String paramName = (String)paramNames.nextElement();
  //    if (!(paramName.equals("stage")) && !(paramName.equals("addrad"))
 //  && !(paramName.equals("yno"))&& !(paramName.equals("submit2"))){
 //     out.print("<tr><td>" + paramName + "</td>\n");
 //     String paramValue = request.getParameter(paramName);
 //     out.println("<td> " + paramValue + "</td></tr>\n");
     
      -->
   

<!--
//    out.println(jsonObj);

//     StringBuilder crunchifyBuilder = new StringBuilder();
//      String resp ="";
//        try {
//         @SuppressWarnings("unchecked")
//        Client c = Client.create();
//                            WebResource resource =
//                        c.resource("http://localhost:7101/travelservice-ViewController/resources/hr/trainee/");
//                          resp = resource.type("application/x-www-form-urlencoded").post(String.class, formdata);
			
                        	//URL url = new URL("http://localhost:7101/travelservice-ViewController/resources/hr/trainee/");
				//URLConnection connection = url.openConnection();
				//connection.setDoOutput(true);
				//connection.setRequestProperty("Content-Type", "application/json");
				//connection.setConnectTimeout(5000);
				//connection.setReadTimeout(5000);
				//OutputStreamWriter outwriter = new OutputStreamWriter(connection.getOutputStream());
				//outwriter.write(jsonObj.toString());
				//outwriter.close();

//				BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
//				while (in.readLine() != null) {   crunchifyBuilder.append(in.readLine());
//				}
                               // JSONObject jsonObject =  HTTP.toJSONObject(crunchifyBuilder.toString());
//				System.out.println("\nREST Service Invoked Successfully.."+resp);
//
//			} catch (Exception e) {
//				System.out.println("\nError while calling Crunchify REST Service");
//				System.out.println(e);
//			}-->
   
      
