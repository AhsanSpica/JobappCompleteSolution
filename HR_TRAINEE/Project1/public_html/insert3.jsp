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
             
                   
                                
                                 boolean validator=false;
                                  String email="";
                                  String tempfile="";
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
                               String filePath ="//data//wls";
                                    //                            String filePath ="D://Late_Coming_SpreadSheet";
                               String contentType = request.getContentType();
                               FileItem fi=null;
                               if ((contentType.indexOf("multipart/form-data") >= 0)) {
                             DiskFileItemFactory factory = new DiskFileItemFactory();
                              factory.setSizeThreshold(maxMemSize);
                              factory.setRepository(new File("//data//wls"));
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
                         
                          
                   if (fieldname.equals("tempfilename")){tempfile=fieldvalue;}
                      
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
                      
                        fileName=tempfile+format;
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
                     
         try{    
       
                     out.println("|true|");    
 
            }   catch(Exception ex)
                      {

                       out.println("|false|");    
                      }
                      
                      
             %>         
         
          
                    </body>
                    </html>
 
   
      
