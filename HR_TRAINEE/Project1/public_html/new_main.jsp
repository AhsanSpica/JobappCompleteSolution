<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>

<%@ page import="java.io.*,java.util.*"%>
<%@ page import="java.sql.*" %>

  <html lang="en">
                
                <head>
                    <!-- Required meta tags-->
                   <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <meta name="description" content="Ahsan_EFU">
                    <meta name="author" content="Ahsan_EFU">
                    <meta name="keywords" content="">
                
                    <!-- Title Page-->
                    <title>EFU MTP | Application</title>
                
                    <!-- Icons font CSS-->
                       
                        <link href="resources/responsive/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
                    <link href="resources/responsive/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
                    <!-- Font special for pages-->
                    <!--<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">-->
                
                    <!-- Vendor CSS-->
                    <link href="resources/responsive/vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
                   <link href="resources/responsive/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>
                
                    <!-- Main CSS-->
                    <link href="resources/responsive/css/main.css" rel="stylesheet" media="all"/>
                    
                    <!--Css from firstpage -->
                      <!--<link type="text/css" rel="stylesheet" href="resources/css/melon.datepicker.css"/>-->
                     <script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script>
                            <link type="text/css" rel="stylesheet" href="resources/css/jquery-ui.css"/>
                          <!--<link type="text/css" rel="stylesheet" href="resources/css/style.css"/>-->
                         <script language="JavaScript" src="resources/js/javascript.js"></script> 
        <style  >
        
        input[type='file']
       {
       background-color: #2385c4;
	border: 0;
	color: #0c3d63;
	cursor: pointer;
	font-weight: 700;
	/*margin: 1em 0 0 0;*/
	padding: .6em;
        
          
        }
         .declarlbl {
         background-color: #2385c4;
	border: 0;
	color: #ffffff;
	font-weight: 700;
         margin-left: 2.0px;
           margin-right: 14.0px;
	width:100%; 
	padding: .1em;  }
                 </style>
                 <script>
               
              
               
               document.addEventListener("DOMContentLoaded", function() {
                 
                      
             // document.getElementById("emailrow").style.marginTop = "-180px";
 
             //  document.getElementById("langtbl").style.marginTop = "-100px";       
                 
         document.getElementById("pq2").style.visibility='hidden';
       
          
          document.getElementById("pq3").style.visibility='hidden';
     
          
           document.getElementById("rowlang2").style.visibility='hidden';
       
           
         document.getElementById("rowlang3").style.visibility='hidden';
        
         
        document.getElementById("exp2").style.visibility='hidden';
        
         
        document.getElementById("row-mast").style.visibility='hidden';  
        document.getElementById("row-bach").style.visibility='hidden';  
        document.getElementById("row-inter").style.visibility='hidden';  
        document.getElementById("row-mat").style.visibility='hidden';
 
            });
            
                                  
                   
                 </script>
                 
                </head>
                 <body>
                                <div class="page-wrapper bg-gra-03 p-t-130 p-b-100 font-poppins">
                                  <div class="wrapper wrapper--w960">
                                     <div class="card card-4">
            
               <div style="text-align: justify;"> 
               <table > <tr style=" "><td   style=" "><div style="text-align: left; ">
                      <a href="https://online.efuinsurance.com/"> 
                      <img alt="Efu Insurance LTD"  height="75" width="64"  style="margin-top:50px;margin-left:50px;" src="resources/images/logo_efu.png" title="Go To Home."/></a>
                    </div></td><td   style=" "></td>
                   <td > <div style="margin-left:100%;  ">
                      </div></td></tr></table></div>
                    <center>
                        <h3>
                            Application Form
                        </h3>
                            <h4>
                                <!--Management Trainee Program &ndash; 2017--> <!--changed from 2017 on the 22 of feb 2019-->
                                Management Trainee Program &ndash; 2019
                                
                            </h4>
                      
                       <center>  <b><span id="date_time"></span></b> <p>&nbsp;</p>
            <script type="text/javascript">window.onload = date_time('date_time');</script>
                         </center> <table class="table9"  style="   font-size:14.0px ;text-align:justify;">
                         <tr><td></td></tr> <tr><td></td></tr><tr><td>
                          <label class="declarlbl" style=" overflow-x:auto; max-width:10px;">
                                    Instructions :&nbsp; </label>
                                 
                   <p style=" min-width:5%;overflow-x:auto; ">. To apply please fill in necessary details and upload your Passport-Size photo.</p>
                    <p style=" min-width:5%;overflow-x:auto; ">. Kindly fill this form to the best of your Knowledge. </p>
                    <!--<p style="min-width:5%;text-align:justify;overflow-x:auto; ">&nbsp;&nbsp;.&nbsp;Your age should not exceed 27 years till the date of this application. </p>-->
                    <p style="min-width:5%;text-align:justify;overflow-x:auto; ">. If you receive a 'Successful' notification message </p>
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">, kindly donot submit duplicate applications and wait for email and SMS till day end</p>
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">, as we receive many applications.   </p>   
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">. All '*' fields are mandatory . </p>
                  <!--<p style="min-width:5%;text-align:justify;overflow-x:auto; ">    . Your photo file should be either png or jpeg.  </p>
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">  . Your photo file size can be up to 800 KB (KiloBytes).</p>-->
                           
                                    </td></tr>
                                     <tr><td><label id="msgdisp"></label></td></tr> </table>
                        
                        <!--<p style=" font-size:11.0px ;">
                           (Accepting from Karachi only)
                        </p>-->
                    </center>
                                            <div class="card-body">
                                            <!--<h2 class="title">Registration Form</h2>-->
                                            
                                            <form name="form9" id="form9" enctype="multipart/form-data">
                               
                        <div class="row row-space">
                        <div class="col-4">
                        <div class="input-group">
                        
                        <label class="label"><b style="color: Red; width:2%;  ">*</b>Applicant Name :</label>
                        </div>
                        </div>
                        
                        <div class="col-4">
                        <div class="input-group">
                                                                            
                        <input class="input--style-4 required" type="text" tabindex=1 id="first_name" onkeypress="return wordcheck(event)" 
                        onkeyup="return z(this)"  name="first_name" placeholder="First Name"/>
                        </div>
                        </div>
                            <div class="col-4">
                                <div class="input-group">
                                    
                                    <input class="input--style-4 " type="text" id="mid_name" onkeypress="return wordcheck(event)" onkeyup="return z(this)"
                                    name="mid_name" placeholder="Middle Name" tabindex=2/>
                                </div>
                            </div>
                             <div class="col-4">
                                <div class="input-group">
                                    
                                    <input class="input--style-4 required" type="text" placeholder="Last Name" 
                                    onkeypress="return wordcheck(event)" onkeyup="return z(this)"  
                                    id="last_name" name="last_name" tabindex=3/>
                                </div>
                            </div>
                        </div>
                        
                          <div class="row row-space">
                        <div class="col-4">
                                <div class="input-group"> 
                              <label  for="APP_F_NAME"  class="label">
                              <b style="color: Red; width:2%;  ">*</b>  Father's Name : 
                            </label> </div></div>
                           <div class="col-4">
                                <div class="input-group">  
                           
                            <input type="text"  id="APP_F_NAME" name="APP_F_NAME"  class="input--style-4 required" 
                              maxlength="40"    onkeyup="return z(this)" onkeypress="return fathercheck(event)"   placeholder="Father's Name" tabindex=4/>
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                            
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                            
                         </div></div>
                         </div>
                       
                           <div class="row row-space">
                        <div class="col-4">
                                <div class="input-group"> 
                              <label  for="CNIC"  class="label">
                              <b style="color: Red; width:2%;  ">*</b>  CNIC : 
                            </label> </div></div>
                           <div class="col-4">
                                <div class="input-group">  
                            <input  type="text" maxlength="15" id="CNIC" name="CNIC"    class="input--style-4 required" 
                         tabindex=5   placeholder="xxxxx-xxxxxxx-x"    onkeyup="return nickeyup()" onkeypress="return nickeypress(event)" 
                           />   <!--onblur="return checkLength(this)"  -->
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                              <label   for="app_photo"  class="label"><b style="color: Red; width:2%;  ">*</b>Applicant Picture :</label>
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                             <input type="file" accept=".jpg,.jpeg,.png"    class="required" title="Choose Picture"
                             tabindex=6 name="app_photo" id="app_photo"/>   
                                                 
                         </div></div>
                         </div>
                         
                         
                        
                        <div class="row row-space">
                          <div class="col-4">
                                <div class="input-group">
                           <label   class="label" for="dob">
                               <b style="color: Red; width:2%;  ">*</b> Date Of Birth :
                            </label>
                        
                          </div></div>
                            <div class="col-4">
                                <div class="input-group">
                               
                                    <div class="input-group-icon">
                                
                                   <input class="input--style-4 required" type="text" id="DOB" name="DOB" readonly='readonly' tabindex=7/>
                                          <!--  js-datepicker -->            
                                          <!--<input class="input--style-4 js-datepicker" type="text" name="birthday">-->
                                         <!--<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>--> 
                                    </div>
                                </div>
                            </div>
                              <div class="col-4">
                                <div class="input-group">
                                  <label  tabindex=7 class="label"><b style="color: Red; width:2%;  ">*</b>Gender</label>
                               
                                </div>
                                </div>  
                                <div class="col-4">
                                  <div class="input-group">
                                 
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input id="male" value="M" checked="checked"  name="GENDER" type="radio"     />
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio"  value="F" id="female"   name="GENDER"     />
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                             </div>
                             
                             <div class="row row-space">
                             <div class="col-4">
                                <div class="input-group">
                                  <label class="label"> 
                                          <b style="color: Red; width:2%;  ">*</b> Address :</label>
                           </div></div>
                                 <div class="col-4">
                                <div class="input-group">            
                               
                                 <input id="RES_ADD" name="RES_ADD" type="text"  maxlength="60"  tabindex=8
                              onkeyup="return z(this)"   onkeypress="return addcheck(event)"    class="input--style-4 required" 
                                   placeholder="Current Address"/>
                          </div></div>
                             <div class="col-4">
                                <div class="input-group">            
                               
                                 <input id="PERM_ADD"      name="PERM_ADD" type="text" maxlength="60"  tabindex=9
                      onkeypress="return addcheck(event)"    onkeyup="return z(this)"   class="input--style-4 required" placeholder="Permanent Address"/>
                          </div></div>
                            <div class="col-4">
                              <div class="row row-space">
                                   <div class="col-2">
                                  <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container label">Same
                                          
                                               <input  id="same"  type="radio"     
                                           value="same"  onClick="toggle(this)"  name="addrad"/>
                                            
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container label">Different
                                           <input   onClick="toggle(this)" checked="checked" id="differ" 
                                           value="differ" type="radio"   name="addrad"/>
                                            <span class="checkmark"></span>
                                        </label>
                                     </div>
                                   </div>
                                     </div>
                                  </div>
                           </div>
                               </div>
                               
                                 <div class="row row-space">
                        <div class="col-4">
                                <div class="input-group"> 
                              <label  for="CITY_ID"  class="label">
                              <b style="color: Red; width:2%;  ">*</b> Applicant City : 
                            </label> </div></div>
                           <div class="col-4">
                                <div class="input-group">  
                               
                                 <div class="rs-select2 js-select-simple select--no-search">
                                   <select id="CITY_ID"  tabindex=10  class="required"   name="CITY_ID">
                                            <% 
                                              Connection con=null;
                                              Statement state1=null;
                                              
                                           try{Class.forName("oracle.jdbc.driver.OracleDriver");
                                            con = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");    
                                             state1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                        ResultSet.CONCUR_READ_ONLY);}catch(Exception ex){}
                                           String  qu = "select ct.CITY_ID,ct.CITY_NM from efu_mast.city ct order by ct.CITY_ID";
                                            
                                             ResultSet rs4=null;             
                                             try{
                                       rs4= state1.executeQuery(qu);
                                                } 
                                                catch(Exception ex){
                                                out.println("There is something wrong with date query: " + ex);
                                                }
                                            while(rs4.next()){    
                                   %>
                                            <option value="<%= rs4.getString(1) %>">
                                                <%= rs4.getString(2) %>
                                            </option>
                                            <%}con.close();%>
                                        </select> 
                                        <div class="select-dropdown"></div>   </div>
                         
                                
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                            
                         </div></div>
                          <div class="col-4">
                                <div class="input-group">  
                            
                         </div></div>
                         </div>
                               
                            <div class="row row-space emailrow" id="emailrow">
                        <div class="col-4">
                                  <div class="input-group">  <label class="label"><b style="color: Red; width:2%;  ">*</b> Email</label></div></div>
                            <div class="col-4">
                                <div class="input-group">
                                 
                                    <input  class="input--style-4 required"  type="email"       tabindex=11  
                                    onblur="  emailcheck(this)" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" id="email" name="email" 
                                    maxlength="40" placeholder="Name@email.com"/>
                                </div>
                            </div>
                            <div class="col-4"> <div class="input-group">
                            <label class="label" for="mob"><b style="color: Red; width:2%;  ">*</b> Mobile :</label></div></div>
                            <div class="col-4">
                                 <div class="input-group">
                                     <input id="CELL_PH"      class="input--style-4 required" 
                                   maxlength="11"  onkeypress="return mobilenum(event)" onblur="return checkmob(this)"   tabindex=12   placeholder="03XXXXXXXXX" name="CELL_PH" type="text" 
                                   />
                                <!--onkeypress = "refmob1(this)"-->
                                </div>
                            </div>
                        </div>
                        
                        
                              <div class="row row-space " >
                        <div class="col-4">
                                  <div class="input-group">  <label class="label">    Home Phone :</label></div></div>
                            <div class="col-4">
                                 <div class="input-group">
                                 <div class="row row-space "  >  
                                
                                 <div class="col-1">
                                   <input class="input--style-4"  style="max-width: 20%;"   
                                  type="text"   readonly="readonly" value="+92"   />
                                  <input  id="RES_PH" name="RES_PH"     class="input--style-4 "  style="max-width: 70%;"
                   tabindex=13   onblur="return checkl(this)"  type="text" maxlength="11" placeholder=" 02134334444"/>
                                </div></div></div>
                                </div>
                     
                            <div class="col-4"> <div class="input-group"><label class="label"> Work Phone :</label>  </div></div>
                            <div class="col-4">
                              <div class="input-group">
                                <div class="row row-space "  >  
                                
                                 <div class="col-1">
                                  <input type="text" class="input--style-4" readonly="readonly"  style="max-width: 20%;"        value="+92"/>
                                     <input  class="input--style-4"   id="WORK_PH" onblur="return checkl(this)"  onkeypress = "numFunc2()"  style="max-width:70%;"
                                    tabindex=14  name="WORK_PH" type="text" maxlength="11"    placeholder=" 03013334444"/>
                             </div></div></div>
                               </div>
                               
                               </div>
                          
                          
                       <div class="row row-space" style=" margin-top: 10px;" id="eduhead">
                        <div class="col-3">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label" id="acaedulbl" >
                                Academic Education
                            </label>
                        
                          </div></div>
                          <div class="col-3">
                                <div class="input-group">
                          <label style=" font-size: 10.0pt;" class="label" >
                              <b style="color: Red; width:2%;  ">*</b>Matric to Graduate Compulsory
                            </label>
                           
                           </div></div>  
                          
                          <div class="col-3">
                                <div class="input-group">
                         <!--<a class="addpq" style="margin-left:70px; cursor: pointer;color:aqua;" onclick="addmoreedu()">Add More . . . </a>-->
                           <div class="rs-select2 js-select-simple select--no-search">
                            <select  tabindex=15 id="seledu" name="seledu" onfocus="showprev()" onchange="addmoreedu()" 
                            class="required"
                            autocomplete="off" >
                                                    <option>Select</option>
                        <option value="row-mat">Secondary School</option>    <option value="row-inter">High Secondary</option>  
                        <option value="row-bach">Bachelors/Graduate</option>
                        <option value="row-mast">Masters/Post-Graduate</option>     
               
                                                </select> <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          </div>
                    
                          
                          
                          
                          <div class="row row-space" style=" margin-top: 10px;" >
                        <div class="col-3">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label" >
                                Professional Qualifications
                            </label>
                        
                          </div></div>
                          <div class="col-3">
                                <div class="input-group">
                           <label style=" font-size: 14.0pt;" class="label" >
                             
                            </label>
                        
                          </div></div>  
                          
                          <div class="col-3">
                                <div class="input-group">
                         <a class="addpq" style="margin-left:70px; cursor: pointer;color:aqua;" onclick="addmore()">Add More . . . </a>
                        
                          </div></div>
                          </div>
                    
                       <div class="row row-space" id="pq1">
                        <div class="col-5">
                                <div class="input-group">
                          <input type="text" id="PQ_1" onkeypress="return wordcheck(event)" class="input--style-4 " 
                                     tabindex=16       maxlength="35"      placeholder="Qualification" name="PQ_1"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                           <input type="text" id="PQ1_INS" onkeypress="return wordcheck(event)" class="input--style-4 " 
                                  tabindex=17          maxlength="35"      placeholder="Institute/University" name="PQ1_INS"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                             <div class="rs-select2 js-select-simple select--no-search">  
                             <select class="dir" id="PQ1_STATUS" name="PQ1_STATUS"  style="max-width:82%;"   tabindex=18  >
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select> <div class="select-dropdown"></div>   </div>    
                         </div></div>
                         
                          <div class="col-5">
                                <div class="input-group">
                            <input type="text" id="PQ1_MAJOR" onkeypress="return wordcheck(event)" class="input--style-4 " 
                                 tabindex=18          maxlength="35"         placeholder="Specialization" name="PQ1_MAJOR"/>
                       </div></div>
                     
                          <div class="col-5">
                                <div class="input-group">
                          <div class="rs-select2 js-select-simple select--no-search">
                          
                          
                          <select class="dir" id="PQ1_PASS_YR" name="PQ1_PASS_YR"   tabindex=19  style="max-width:82%;" >
                                             <option  value="0000" >yet to pass</option>
                                          <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option> 
                                            <option>
                                                2017
                                            </option>
                                            <option>
                                                2016
                                            </option>
                                            <option>
                                                2015
                                            </option>
                                            <option>
                                                2014
                                            </option>
                                            <option>
                                                2013
                                            </option>
                                            <option>
                                                2012
                                            </option>
                                            <option>
                                                2011
                                            </option>
                                            <option>
                                                2010
                                            </option>
                                            <option>
                                                2009
                                            </option>
                                            <option>
                                                2008
                                            </option>
                                            <option>
                                                2007
                                            </option>
                                            <option>
                                                2006
                                            </option>
                                            <option>
                                                2005
                                            </option>
                                            <option>
                                                2004
                                            </option>
                                            <option>
                                                2003
                                            </option>
                                            <option>
                                                2002
                                            </option>
                                            
                                        </select>  <div class="select-dropdown"></div>   </div>   
                          </div></div>
                          </div>
                        
                          
                          
                          <div class="row row-space" style=" margin-top: 10px;" >
                        <div class="col-3">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label" >
                                Experience
                            </label>
                        
                          </div></div>
                          <div class="col-3">
                                <div class="input-group">
                           <label style=" font-size: 14.0pt;" class="label" >
                             
                            </label>
                        
                          </div></div>  
                          
                          <div class="col-3">
                                <div class="input-group">
                     
                         <a id="addex" style="  margin-left: 70px; cursor: pointer;color:aqua;" onclick="addmorexp()">&nbsp;Add More . . . &nbsp;</a>
                          </div></div>
                          </div>
                          
                          
                            <div class="row row-space" style=" margin-top: 10px;" id="exp1" >
                              <div class="col-5">
                                <div class="input-group">
                           <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="35"  
                            tabindex=20  id="EX1_COMP" placeholder="Company Name" name="EX1_COMP" class="input--style-4 " 
                             />
                           </div></div>
                           
                           <div class="col-5">
                                <div class="input-group">
                            <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="20"  
                          tabindex=21    id="EX1_JOBT" placeholder="Job Title" name="EX1_JOBT" class="input--style-4 "
                            
                          />
                             </div></div>
                             
                           <div class="col-5">
                                <div class="input-group">
                            <input type="text" id="EX1_RESP" placeholder="Responsibilities"  class="input--style-4 " 
                               tabindex=22    onkeyup="return z(this)"  onkeypress="return wordcheck(event)"     maxlength="35"  
                               name="EX1_RESP"   />
                            </div></div>
                            
                           <div class="col-5">
                                <div class="input-group">
                             <div class="input-group-icon">
                                  <input  maxlength="9" readonly="readonly" placeholder="29-MAR-17"
                             tabindex=23    class="input--style-4  "  id="EX1_FR" name="EX1_FR" onchange="rangecheck()"  />
                                    <!--   js-datepicker     <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->
                                     </div>
                              </div></div>
                            <div class="col-5">
                                <div class="input-group">
                                 
                                    <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                            tabindex=24   class="input--style-4  " id="EX1_TO" name="EX1_TO"   onchange="rangecheck()"  />
                                    <!--<label style="font-size: 9.5pt;" class="label">  Ongoing    --><!--   js-datepicker     <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->
                                     <!--<input type="checkbox" title="Ongoing"   name="ongoing" id="ongoing" />-->
                                    </label>
                                     
                             </div>
                            </div> 
                            
                                  </div>
                            
                        <div class="row row-space" style=" margin-top: 10px;"   >
                        <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label" >
                                References
                            </label>
                        
                          </div></div>
                          <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             <b style="color: Red; width:2%;  ">*</b> Two References Compulsory
                            </label>
                        
                          </div></div>
                            <div class="col-4">
                                <div class="input-group">
                           
                        
                          </div></div>
                          <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label"  >
                           
                            </label>
                        
                          </div>
                          
                          </div> 
                          <!--<div class="col-4">
                                <div class="input-group">
                         <a   style=" cursor: pointer;  color:aqua;" onclick="addmoreref()">Add More References . . .; </a>
                        
                          </div></div>-->
                          </div>
                          
                            <div class="row row-space" style=" margin-top: 10px;" id="ref1" >
                        <div class="col-6">
                                <div class="input-group">
                              
                              <input type="text" maxlength="35"  id="REF_NAME_1" placeholder="Reference"  
                             tabindex=25   class="input--style-4 required"   onfocus="showprev()"  onkeyup="return z(this)" 
                             onkeypress="return wordcheck(event)" name="REF_NAME_1"/>
                        
                          </div></div> <div class="col-6">
                                <div class="input-group">
                            <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" 
                          tabindex=26   class="input--style-4 required"    id="REF_DESIG_1" placeholder="Designation"  name="REF_DESIG_1"/>
                        
                          </div></div> <div class="col-6">
                                <div class="input-group">
                            
                          <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" 
                        tabindex=27    class="input--style-4 required"   id="REF_ORG_1" placeholder="Organization" name="REF_ORG_1"/>
                                 
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                                <input type="text" maxlength="35"  id="REF_ADD_1"   tabindex=28 
                     class="input--style-4 required"    onkeypress="return addcheck(event)"   placeholder="Address" name="REF_ADD_1"/>
                        
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                           <input id="REF_PHONE_1" placeholder=" 02112345678"    tabindex=29 
                             class="input--style-4 required"     onblur="return checkl(this)"  type="text" maxlength="11"   name="REF_PHONE_1"/>
                        
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                            <input type="tel" id="REF_MOBILE_1" placeholder="03XX1234567" maxlength="11"   tabindex=30 
                             class="input--style-4 "   onkeypress="return mobilenum(event)" onblur="return checkmob(this)"     name="REF_MOBILE_1"/>
                         <!--onkeypress = "refmob1(this)"return refmob11(this) -->
                          </div></div>
                          </div>
                          
                            <div class="row row-space" style=" margin-top: 10px;" id="ref2" >
                        <div class="col-6">
                                <div class="input-group">
                            
                              <input type="text" maxlength="35"  id="REF_NAME_2" placeholder="Reference"   tabindex=31 
                            class="input--style-4 "     onfocus="showprev()"  onkeyup="return z(this)"  onkeypress="return wordcheck(event)" name="REF_NAME_2"/>
                        
                          </div></div> <div class="col-6">
                                <div class="input-group">
                            <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  tabindex=32 
                           class="input--style-4 "  id="REF_DESIG_2" placeholder="Designation"  name="REF_DESIG_2"/>
                        
                          </div></div> <div class="col-6">
                                <div class="input-group">
                            
                          <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  tabindex=33 
                         class="input--style-4 "  id="REF_ORG_2" placeholder="Organization" name="REF_ORG_2"/>
                                 
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                                <input type="text" maxlength="35"  id="REF_ADD_2" class="input--style-4 "  tabindex=34 
                       onkeypress="return addcheck(event)"   placeholder="Address" name="REF_ADD_2"/>
                        
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                           <input id="REF_PHONE_2" placeholder="02112345678"   class="input--style-4 " tabindex=35 
                                onblur="return checkl(this)"  type="text" maxlength="11"   name="REF_PHONE_2"/>
                        
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                            <input type="tel" id="REF_MOBILE_2" placeholder="03XX1234567" maxlength="11" class="input--style-4 "
                            tabindex=36    onkeypress="return mobilenum(event)" onblur="return checkmob(this)"   name="REF_MOBILE_2"/>
                        <!--onkeypress = "refmob2(this.value)" onblur="return checkmobd(this)"  -->
                          </div></div>
                          </div>
                      
                           <div class="row row-space" style=" margin-top: 10px;"  >
                        <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label"  tabindex=37 >
                                Computer Skills
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label"  >
                           
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                       
                        
                          </div></div>
                          </div>
                            
                              <div class="row row-space" style=" margin-top: 10px;" >
                        <div class="col-4">
                                <div class="input-group">
                           
                                    <div class="p-t-1">
                                        <label class="radio-container ">Beginner
                                         <input type="radio" id="CBEG" value="0" checked="checked" name="COMP_SKILL"/>
                                            <span class="checkmark"></span>
                                        </label>
                                       </div>
                           </div></div>
                          
                          <div class="col-4">
                                <div class="input-group">
                            <div class="p-t-1">
                          <label class="radio-container">Average
                                             <input type="radio" id="CAVG" value="1" name="COMP_SKILL"/>
                                            <span class="checkmark"></span>
                                        </label>
                        </div>
                          </div></div>
                          
                          <div class="col-4">
                                <div class="input-group">
                             <div class="p-t-1">
                        <label class="radio-container">Good
                                             <input type="radio" id="CGOOD" value="2" name="COMP_SKILL"/>
                                            <span class="checkmark"></span>
                                        </label>
                        </div>
                          </div></div> 
                          
                          <div class="col-4">
                                <div class="input-group">
                          <div class="p-t-1">
                          <label class="radio-container"> Excellent
                                            <input type="radio" id="CEXC" value="3" name="COMP_SKILL"/>
                                            <span class="checkmark"></span>
                                        </label>  
                        </div>
                           </div></div>
                          </div>
                         
                       
                      
                                <div class="row row-space" style=" margin-top: 10px;" id="langtbl" >
                                <div class="col-4">
                                <div class="input-group">
                               <label style=" font-size: 13.5pt;" class="label"  tabindex=38  >
                                Languages
                               </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             <b style="color: Red; width:2%;  ">*</b> One Language Compulsory
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label"  >
                          
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                         <a id="add" style=" cursor: pointer;  color:aqua;" onclick="addmorelang()">Add More Languages . . .; </a>
                        
                          </div></div>
                          </div>
                         
                        <div class="row row-space" id="rowlang1">
                            <div class="col-5">
                                                    <div class="input-group">
                                 <input   type="text"  onkeyup="return z(this)" style="width=80%;"
                                class="input--style-4 required"  placeholder ="Language" tabindex="39"
                                 onkeypress="return wordcheck(event)"  maxlength="15" id="LANG_1" name="LANG_1"/>                                                
 
                                                    </div>
                                                    </div>
                           <div class="col-5">
                         <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                               Speaking
                            </label>
                        
                          </div>
                                 </div>
                                  <div class="col-2">
                                  <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                           <input type="radio" value="0" id="savg" checked="checked" name="LANG1_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                            <input type="radio" id="sgood" value="1" name="LANG1_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                            <input type="radio" id="sexc" value="2" name="LANG1_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                   </div>
                                   
                                    </div>
                                    
                                </div>
                                                    </div>
                            <div class="col-4">
               <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             Reading
                            </label>
                        
                          </div>
                                 </div>
                                  <div class="col-2">
                  <div class="input-group">
                              <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                            <input type="radio" value="0" id="ravg" checked="checked" name="LANG1_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="rgood" value="1" name="LANG1_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                          <input type="radio" id="rexc" value="2" name="LANG1_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div>
                                          </div>   </div>  </div>  
                                          
                         <div class="col-4">
                         <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             Writing
                            </label>
                        
                          </div>
                                 </div>
                                  <div class="col-2">
                         
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                       <input type="radio" value="0" id="wavg" checked="checked" name="LANG1_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="wgood" value="1" name="LANG1_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                           <input type="radio" id="wexc" value="2" name="LANG1_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div> 
                                                    </div>    </div>    </div>  </div>              
                         
                       
                         
                         <div class="row row-space" style=" margin-top: 10px;"   >
                        <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="label" >
                                Extra Info
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label"  >
                           
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                         
                        
                          </div></div>
                          </div>      
                          
                              <div class="row row-space" style=" margin-top: 10px;"   >
                        <div class="col-2">
                                <div class="input-group">
                              <textarea class="header4 input--style-4 " id="HOBBIES" rows="4" cols="40" name="HOBBIES" maxlength="299"
                                  onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  tabindex="40"
                                  placeholder="Share your Hobbies Please"></textarea>
                        
                          </div></div>
                          
                          <div class="col-2">
                                <div class="input-group">
                          <textarea id="JUSTIFY" rows="4" cols="40" name="JUSTIFY"  onkeyup="return z(this)"  
                          onkeypress="return wordcheck(event)" 
                        tabindex="41"      maxlength="299"  class="input--style-4  required" 
                        placeholder="Please justify why you are applying for this position at EFU"></textarea>
                            
                          </div></div>
                          </div> 
                              <div class="row row-space" style=" margin-top: 10px;"   >
                        <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 13.5pt;" class="declarlbl label" >
                               Declaration:
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                             
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label"  >
                           
                            </label>
                        
                          </div></div> <div class="col-4">
                                <div class="input-group">
                         
                        
                          </div></div>
                          </div>      
                          
                              <div class="row row-space" style=" margin-top: 10px;"   >
                        
                          
                          <div class="col-1">
                              <div class="input-group" style=" text-align: justify; ">  
                              <input type="checkbox" title="Accept Declaration"   name="checky" id="checky"/></div>
                                <div class="input-group" style=" text-align: justify;margin-left: 45px;">
                      
                        I hereby declare that all the information in this employment application is complete and correct to the best of my knowledge.
         I authorize EFU General Insurance Ltd. to verify any information stated above.
         Any misrepresentation of above information may lead to action against my application as per rules and regulations of EFU General Insurance Ltd.
                             
                        
                          </div></div>
                          </div> 
                             <div class="row row-space" style=" margin-top: -1px;"   >
                         <div class="col-4">
                                <div class="input-group">
                
                           </div></div>
                          <div class="col-4">
                                <div class="input-group">
                 
                           </div></div>
                           <div class="col-4">
                                <div class="input-group">
                 
                           </div></div>
                          <div class="col-4">
                                <div class="input-group">
                         
                           </div></div>
                           
                          </div>  
                          
                        
                        <div class="p-t-15">
                         
                            <input  type="button" value="Submit Application"    name="submit2" id="submit2" onclick="formpost()" />  
                            <!--<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>-->
                        </div>
                  <!--  </div> -->  <!-- end of first panel  -->
                  <!--   </div>  --> <!--end of all panels do this  -->
                    <div style="display:none;">
                    
                      <!--row for masters education-->
                          
                           <div class="row row-space"  id="row-mast" >
                        <div class="col-6">
                                <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                            <select class="dir " id="MASTERS" name="MASTERS" onfocus="showprev()">
                                                    <option>Select</option>
                             <option>MCS</option>    <option>M.B.A</option><option>M.Com</option><option>M.Sc</option><option>M.A</option>
               
                                                </select> <div class="select-dropdown"></div>
                            </div>
                         </div></div>
                          
                          <!--<div class="col-6">
                                <div class="input-group">
                                   <input  maxlength="30"    onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  
                               class="input--style-4"  type="text" id="MAS_OTHER" name="MAS_OTHER" placeholder=" Other Qualification " />
                         </div></div>-->
                          
                          <div class="col-6">
                                <div class="input-group">
                              <input type="text" id="MAS_MAJOR" onkeypress="return wordcheck(event)"
                            class="input--style-4 "  maxlength="35"    name="MAS_MAJOR" placeholder="Specialization"/>
                         </div></div>
                         
                          <div class="col-6">
                                <div class="input-group">
                        <input type="text" id="MAS_UNIV" onkeypress="return wordcheck(event)"
                            class="input--style-4 "  maxlength="35"       name="MAS_UNIV" placeholder="Masters University"/>
                       </div></div>
                     
                          <div class="col-6">
                                <div class="input-group">
                        <input  id="MAS_GPA" name="MAS_GPA" onkeyup="this.value=masgpa(this.value)"
                          class="input--style-4 "  onblur="return gpaLen(this)" type="text" maxlength="4"  placeholder="Masters CGPA or %"/>
                          </div></div>
                         <div class="col-6">
                                <div class="input-group">
                         <div class="rs-select2 js-select-simple select--no-search">
                          <select class="dir " id="MAS_PASS_YR" name="MAS_PASS_YR" width="150px">
                                                    <option value="0000">Year_of_Passing</option>
                                                  <option value="0000">Ongoing</option>
                                                   <option>2019</option>
                                                   <option>2018</option> 
                                                    <option>2017</option>
                                                    <option>2016</option>
                                                    <option>2015 </option>
                                                    <option>2014</option>
                                                    <option>2013</option>
                                                    <option>2012</option>
                                                    <option>2011</option>
                                                    <option>2010</option> 
                                                    <option>2009 </option> <option>2008</option> <option>2007</option> <option>2006 </option>
                                                    <option>2005</option><option>2004</option><option>2003</option><option>2002</option>
                                                </select> <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                  
                    <div class="rs-select2 js-select-simple select--no-search">
                      <select  id="MAS_CITY_ID"   name="MAS_CITY_ID">
                                            <% 
                                            Connection conner=null;
                                                      Statement state2=null;
                                                      
                                                   try{Class.forName("oracle.jdbc.driver.OracleDriver");
                                                    conner = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");    
                                                     state2 = conner.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                                ResultSet.CONCUR_READ_ONLY);}catch(Exception ex){}
                                                   String  qur = "select ct.CITY_ID,ct.CITY_NM from efu_mast.city ct order by ct.CITY_ID";
                                                    
                                                     ResultSet rs5=null;             
                                                     try{
                                               rs5= state2.executeQuery(qur);
                                                        } 
                                                        catch(Exception ex){
                                                        out.println("There is something wrong with date query: " + ex);
                                                        }
                                                    while(rs5.next()){    
                                           %>
                                            <option value="<%= rs5.getString(1) %>">
                                                <%= rs5.getString(2) %>
                                            </option>
                                            <%}conner.close();%>
                                        </select>             <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          </div>
                           <!--row for bach education-->
                          
                           <div class="row row-space"  id="row-bach" >
                        <div class="col-6">
                                <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                              <select class="dir edu required BACH" id="BACHELORS"    name="BACHELORS" onfocus="showprev()">
                                                  <option>Select</option>
                                                    
             <option>BSCS</option><option>B.Sc.</option><option>B.E</option><option>BBA</option><option>B.Com</option><option>B.A</option>
                                                </select>     <div class="select-dropdown"></div>
                            </div>
                         </div></div>
                          
                          <div class="col-6">
                                <div class="input-group">
                                 <input type="text" id="BACH_MAJOR" onkeypress="return wordcheck(event)"
                                        class="input--style-4 required BACH"   maxlength="35"   name="BACH_MAJOR" placeholder="Specialization"/>
                         </div></div>
                          <div class="col-6">
                                <div class="input-group">
                        <input type="text" id="BACH_UNIV" onkeypress="return wordcheck(event)"
                          class="input--style-4 required BACH"  maxlength="35" name="BACH_UNIV" placeholder="Bachelor's University"/>
                       </div></div>
                     
                          <div class="col-6">
                                <div class="input-group">
                       <input    type="text" maxlength="4" id="BACH_GPA" name="BACH_GPA"
                        class="input--style-4 required BACH"  onblur="return gpaLen(this)"  onkeyup="this.value=bachgpa(this.value)"      placeholder="Bachelor's CGPA or %"/>
                          </div></div>
                         <div class="col-6">
                                <div class="input-group">
                         <div class="rs-select2 js-select-simple select--no-search">
                        <select class="dir required BACH" id="BACH_PASS_YR" name="BACH_PASS_YR" width="150px">
                                                     <option >Year_of_Passing</option>
                                                   <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option>
                                                    <option>
                                                        2017
                                                    </option>
                                                    <option>
                                                        2016
                                                    </option>
                                                    <option>
                                                        2015
                                                    </option>
                                                    <option>
                                                        2014
                                                    </option>
                                                    <option>
                                                        2013
                                                    </option>
                                                    <option>
                                                        2012
                                                    </option>
                                                    <option>
                                                        2011
                                                    </option>
                                                    <option>
                                                        2010
                                                    </option>
                                                    <option>
                                                        2009
                                                    </option>
                                                    <option>
                                                        2008
                                                    </option>
                                                    <option>
                                                        2007
                                                    </option>
                                                    <option>
                                                        2006
                                                    </option>
                                                    <option>
                                                        2005
                                                    </option>
                                                    <option>
                                                        2004
                                                    </option>
                                                    <option>
                                                        2003
                                                    </option>
                                                    <option>
                                                        2002
                                                    </option>
                                                   
                                                </select> <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                  
                    <div class="rs-select2 js-select-simple select--no-search">
                       <select class="required BACH" id="BACH_CITY_ID"  name="BACH_CITY_ID">
                                            <% 
    Connection conn=null;
              Statement state3=null;
              
           try{Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");    
             state3 = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);}catch(Exception ex){}
           String  quri = "select ct.CITY_ID,ct.CITY_NM from efu_mast.city ct order by ct.CITY_ID";
            
             ResultSet rs6=null;             
             try{
       rs6= state3.executeQuery(quri);
                } 
                catch(Exception ex){
                out.println("There is something wrong with date query: " + ex);
                }
            while(rs6.next()){    
   %>
                                            <option value="<%= rs6.getString(1) %>">
                                                <%= rs6.getString(2) %>
                                            </option>
                                            <%}conn.close();%>
                                        </select>           <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          </div>
                           <!--row for inter education-->
                          
                           <div class="row row-space"  id="row-inter" >
                        <div class="col-6">
                                <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                              <select class="dir edu INT" id="INTER" name="INTER" >
                                                  <option  value="Select">Select</option>
                                                   <option  value="FSC">F.Sc</option>
                                              <option  value="FA">F.A.</option>
                                            <option  value="ICOM">I.Com</option>
                                                  <option  value="HSC" >H.S.C</option>
                                                <option value="level">A Level</option>  
                                                </select>   
                                                <div class="select-dropdown"></div>
                            </div>
                         </div></div>
                          
                          <div class="col-6">
                                <div class="input-group">
                       <input type="text" id="INTER_MAJOR" onkeypress="return wordcheck(event)"
                      class="input--style-4 required INT"  maxlength="35"  name="INTER_MAJOR" placeholder="Inter Major"/>
                         </div></div>
                          <div class="col-6">
                                <div class="input-group">
                          <input type="text" id="INTER_COLL" onkeypress="return wordcheck(event)"
                        class="input--style-4 required INT"  maxlength="35"  name="INTER_COLL" placeholder="High School College"/>
                       </div></div>
                     
                          <div class="col-6">
                                <div class="input-group">
                             <input  id="INTER_GPA" name="INTER_GPA" onkeyup="this.value=gpaFunc(this.value)" style="width:75%;"
                        class="input--style-4 required INT"  onblur="return percLen(this)" type="text" maxlength="5" placeholder="Percentage %"/>
                          </div></div>
                         <div class="col-6">
                                <div class="input-group">
                         <div class="rs-select2 js-select-simple select--no-search">
                         <select class="dir required INT" id="INTER_PASS_YR" name="INTER_PASS_YR"
                                                        width="150px">
                                                  <option>Year_of_Passing</option>
                                                  <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option>  <option>
                                                        2017
                                                    </option>
                                                    <option>
                                                        2016
                                                    </option>
                                                    <option>
                                                        2015
                                                    </option>
                                                    <option>
                                                        2014
                                                    </option>
                                                    <option>
                                                        2013
                                                    </option>
                                                    <option>
                                                        2012
                                                    </option>
                                                    <option>
                                                        2011
                                                    </option>
                                                    <option>
                                                        2010
                                                    </option>
                                                    <option>
                                                        2009
                                                    </option>
                                                    <option>
                                                        2008
                                                    </option>
                                                    <option>
                                                        2007
                                                    </option>
                                                    <option>
                                                        2006
                                                    </option>
                                                    <option>
                                                        2005
                                                    </option>
                                                    <option>
                                                        2004
                                                    </option>
                                                    <option>
                                                        2003
                                                    </option>
                                                    <option>
                                                        2002
                                                    </option>
                                                </select> <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                  
                    <div class="rs-select2 js-select-simple select--no-search">
                      <select   id="INTER_CITY_ID" class="INT required" name="INTER_CITY_ID">
                                            <% 
    Connection conn4=null;
              Statement state7=null;
              
           try{Class.forName("oracle.jdbc.driver.OracleDriver");
            conn4 = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");    
             state7 = conn4.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);}catch(Exception ex){}
           String  quri7 = "select ct.CITY_ID,ct.CITY_NM from efu_mast.city ct order by ct.CITY_ID";
            
             ResultSet rs7=null;             
             try{
       rs7= state7.executeQuery(quri7);
                } 
                catch(Exception ex){
                out.println("There is something wrong with date query: " + ex);
                }
            while(rs7.next()){    
   %>
                                            <option value="<%= rs7.getString(1) %>">
                                                <%= rs7.getString(2) %>
                                            </option>
                                            <%}conn4.close();%>
                                        </select>         <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          </div>
                          <!--row for matric education-->
                          
                           <div class="row row-space"  id="row-mat" >
                        <div class="col-6">
                                <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                               <select class="dir edu required MAT" id="MATRIC" name="MATRIC"  >
                                                    <option value="Select">Select</option>
                                                    <option value="SSC">S.S.C</option>
                                                      <option  value="level">O Level</option></select>  <div class="select-dropdown"></div>
                            </div>
                         </div></div>
                          
                          <div class="col-6">
                                <div class="input-group">
                               <input type="text" id="MAT_MAJOR" onkeypress="return wordcheck(event)"
                         class="input--style-4 required  MAT"  maxlength="35"         name="MAT_MAJOR" placeholder="Matric Major"/>
                         </div></div>
                          <div class="col-6">
                                <div class="input-group">
                  <input type="text" id="MAT_SCHOOL" onkeypress="return wordcheck(event)"
                    class="input--style-4 required MAT"   maxlength="35"   placeholder="Matric School"      name="MAT_SCHOOL" />
                       </div></div>
                     
                          <div class="col-6">
                                <div class="input-group">
                                  <input     id="MAT_GPA" name="MAT_GPA"  type="text" maxlength="5" style="width:75%;"
                         class="input--style-4 required MAT"  onblur="return percLen(this)"    onkeyup="this.value=matgpa(this.value)"    placeholder="Percentage %"/>
                          </div></div>
                         <div class="col-6">
                                <div class="input-group">
                         <div class="rs-select2 js-select-simple select--no-search">
                            <select class="dir required MAT" id="MAT_PASS_YR" name="MAT_PASS_YR" width="150px">
                                                    <option >Year_of_Passing</option>
                                                   <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option> <option>
                                                        2017
                                                    </option>
                                                    <option>
                                                        2016
                                                    </option>
                                                    <option>
                                                        2015
                                                    </option>
                                                    <option>
                                                        2014
                                                    </option>
                                                    <option>
                                                        2013
                                                    </option>
                                                    <option>
                                                        2012
                                                    </option>
                                                    <option>
                                                        2011
                                                    </option>
                                                    <option>
                                                        2010
                                                    </option>
                                                    <option>
                                                        2009
                                                    </option>
                                                    <option>
                                                        2008
                                                    </option>
                                                    <option>
                                                        2007
                                                    </option>
                                                    <option>
                                                        2006
                                                    </option>
                                                    <option>
                                                        2005
                                                    </option>
                                                    <option>
                                                        2004
                                                    </option>
                                                    <option>
                                                        2003
                                                    </option>
                                                    <option>
                                                        2002
                                                    </option>
                                                </select> <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          <div class="col-6">
                                <div class="input-group">
                  
                    <div class="rs-select2 js-select-simple select--no-search">
                  <select   id="MAT_CITY_ID" class="MAT required" name="MAT_CITY_ID">
                                            <% 
    Connection conn8=null;
              Statement state8=null;
              
           try{Class.forName("oracle.jdbc.driver.OracleDriver");
            conn8 = DriverManager.getConnection("jdbc:oracle:thin:@test.efuinsurance.com:1521:test","efu_gis", "test");    
             state8 = conn8.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);}catch(Exception ex){}
           String  quri8 = "select ct.CITY_ID,ct.CITY_NM from efu_mast.city ct order by ct.CITY_ID";
            
             ResultSet rs8=null;             
             try{
       rs8= state8.executeQuery(quri8);
                } 
                catch(Exception ex){
                out.println("There is something wrong with date query: " + ex);
                }
            while(rs8.next()){    
   %>
                                            <option value="<%= rs8.getString(1) %>">
                                                <%= rs8.getString(2) %>
                                            </option>
                                            <%}conn8.close();%>
                                        </select>       <div class="select-dropdown"></div>
                            </div>
                          </div></div>
                          </div>
                    
                    
                    </div> <!--container for educations-->
                    
                    <div style="display:none;">
                    
                      <div class="row row-space" id="pq2">
                        <div class="col-5">
                                <div class="input-group">
                           <input type="text" id="PQ_2" onkeypress="return wordcheck(event)" class="input--style-4" 
                                          maxlength="35"       placeholder="Qualification" name="PQ_2"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                           <input type="text" id="PQ2_INS" onkeypress="return wordcheck(event)" class="input--style-4" 
                                           maxlength="35"      placeholder="Institute/University" name="PQ2_INS"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                           <div class="rs-select2 js-select-simple select--no-search">
                              <select class="dir" id="PQ2_STATUS" name="PQ2_STATUS"  style="max-width:82%;"  >
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select> <div class="select-dropdown"></div>   </div> 
                         </div></div>
                         
                          <div class="col-5">
                                <div class="input-group">
                            <input type="text" id="PQ2_MAJOR" onkeypress="return wordcheck(event)" class="input--style-4" 
                                        maxlength="35"         placeholder="Specialization" name="PQ2_MAJOR"/>
                       </div></div>
                     
                          <div class="col-5">
                                <div class="input-group">
                                 <div class="rs-select2 js-select-simple select--no-search">
                       
                                
                        <select class="dir" id="PQ2_PASS_YR" name="PQ2_PASS_YR" style="max-width:82%;" >
                                             <option  value="0000" >yet_to_pass</option>
                                          <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option> 
                                            <option>
                                                2017
                                            </option>
                                            <option>
                                                2016
                                            </option>
                                            <option>
                                                2015
                                            </option>
                                            <option>
                                                2014
                                            </option>
                                            <option>
                                                2013
                                            </option>
                                            <option>
                                                2012
                                            </option>
                                            <option>
                                                2011
                                            </option>
                                            <option>
                                                2010
                                            </option>
                                            <option>
                                                2009
                                            </option>
                                            <option>
                                                2008
                                            </option>
                                            <option>
                                                2007
                                            </option>
                                            <option>
                                                2006
                                            </option>
                                            <option>
                                                2005
                                            </option>
                                            <option>
                                                2004
                                            </option>
                                            <option>
                                                2003
                                            </option>
                                            <option>
                                                2002
                                            </option>
                                            
                                        </select>   <div class="select-dropdown"></div>   </div>   
                          </div></div>
                          </div>
                            <div class="row row-space" id="pq3">
                        <div class="col-5">
                                <div class="input-group">
                          <input type="text" id="PQ_3" onkeypress="return wordcheck(event)" class="input--style-4" 
                                           maxlength="35"      placeholder="Qualification" name="PQ_3"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                           <input type="text" id="PQ3_INS" onkeypress="return wordcheck(event)" class="input--style-4" 
                                           maxlength="35"      placeholder="Institute/University" name="PQ3_INS"/>
                         </div></div>
                          
                          <div class="col-5">
                                <div class="input-group">
                                 <div class="rs-select2 js-select-simple select--no-search">
                      
                                
                             <select class="dir" id="PQ3_STATUS" name="PQ3_STATUS"  style="max-width:82%;"  >
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select>    <div class="select-dropdown"></div>   </div>   
                         </div></div>
                         
                          <div class="col-5">
                                <div class="input-group">
                            <input type="text" id="PQ3_MAJOR" onkeypress="return wordcheck(event)" class="input--style-4" 
                                        maxlength="35"         placeholder="Specialization" name="PQ3_MAJOR"/>
                       </div></div>
                     
                          <div class="col-5">
                                <div class="input-group">
                                 <div class="rs-select2 js-select-simple select--no-search">
                      
                        <select class="dir" id="PQ3_PASS_YR" name="PQ3_PASS_YR" style="max-width:82%;" >
                                             <option  value="0000" >yet_to_pass</option>
                                          <option>
                                                2019
                                            </option><option>
                                                2018
                                            </option> 
                                            <option>
                                                2017
                                            </option>
                                            <option>
                                                2016
                                            </option>
                                            <option>
                                                2015
                                            </option>
                                            <option>
                                                2014
                                            </option>
                                            <option>
                                                2013
                                            </option>
                                            <option>
                                                2012
                                            </option>
                                            <option>
                                                2011
                                            </option>
                                            <option>
                                                2010
                                            </option>
                                            <option>
                                                2009
                                            </option>
                                            <option>
                                                2008
                                            </option>
                                            <option>
                                                2007
                                            </option>
                                            <option>
                                                2006
                                            </option>
                                            <option>
                                                2005
                                            </option>
                                            <option>
                                                2004
                                            </option>
                                            <option>
                                                2003
                                            </option>
                                            <option>
                                                2002
                                            </option>
                                            
                                        </select>    <div class="select-dropdown"></div>   </div>   
                          </div></div>
                          </div>
                    
                    </div> <!--container for professional qualif-->
                    
                    
                    <div style="display:none;">
                    
                     <div class="row row-space" id="rowlang2"  >
                            <div class="col-5">
                                                    <div class="input-group">
                                     <input   type="text"  onkeyup="return z(this)"
                                      class="input--style-4" placeholder ="Language" style="width=80%;"
                                     onkeypress="return wordcheck(event)"  maxlength="15" id="LANG_2" name="LANG_2"/>                                                
 
                                                    </div>
                                                    </div>
                           <div class="col-5">
                
                <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                            Speaking
                            </label>
                        
                          </div>
                                 </div>
                                  <div class="col-2">
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                           <input type="radio" value="0" id="savg2" checked="checked" name="LANG2_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                            <input type="radio" id="sgood2" value="1" name="LANG2_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                            <input type="radio" id="sexc2" value="2" name="LANG2_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div>
                                                    </div></div></div>
                            <div class="col-4">
                              <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                              Reading
                            </label>
                        
                          </div>
                                 </div>
                              <div class="col-2">
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                            <input type="radio" value="0" id="ravg2" checked="checked" name="LANG2_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="rgood2" value="1" name="LANG2_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                          <input type="radio" id="rexc2" value="2" name="LANG2_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div>
                                          </div>  </div></div>
                                          
                         <div class="col-4">
                           <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                              Writing
                            </label>
                        
                          </div>
                                 </div>
                              <div class="col-2">
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                       <input type="radio" value="0" id="wavg2" checked="checked" name="LANG2_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="wgood2" value="1" name="LANG2_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                           <input type="radio" id="wexc2" value="2" name="LANG2_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div> 
                                                    </div>    </div>   </div></div>
                      
                        <div class="row row-space" id="rowlang3"    >
                            <div class="col-5">
                                                    <div class="input-group">
     <input  type="text"  class="input--style-4"  placeholder ="Language" style="width=80%;"
     onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  maxlength="15" id="LANG_3" name="LANG_3"/>                                                
 
                                                    </div>
                                                    </div>
                           <div class="col-5">
                           
                             <div class="row row-space">
                                 <div class="col-2 lbl">
                                   <div class="input-group  ">
                           <label style=" font-size: 10.0pt;" class="label "  >
                              Speaking
                            </label>
                        
                          </div>
                                 </div>
                              <div class="col-2">
                 <div class="input-group">
                                    <div  >
                                        <label class="radio-container ">Avg
                                           <input type="radio" value="0" id="savg3" checked="checked" name="LANG3_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                            <input type="radio" id="sgood3" value="1" name="LANG3_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                            <input type="radio" id="sexc3" value="2" name="LANG3_SP"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div>
                                                    </div></div></div>
                            <div class="col-4">
                              <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                              Reading
                            </label>
                        
                          </div>
                                 </div>
                              <div class="col-2">
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                            <input type="radio" value="0" id="ravg3" checked="checked" name="LANG3_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="rgood3" value="1" name="LANG3_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                          <input type="radio" id="rexc3" value="2" name="LANG3_RD"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div>
                                          </div>  </div></div>
                                          
                         <div class="col-4">
                           <div class="row row-space">
                                 <div class="col-2">
                                   <div class="input-group">
                           <label style=" font-size: 10.0pt;" class="label" >
                              Writing
                            </label>
                        
                          </div>
                                 </div>
                              <div class="col-2">
                 <div class="input-group">
                                    <div class="p-t-1">
                                        <label class="radio-container ">Avg
                                       <input type="radio" value="0" id="wavg3" checked="checked" name="LANG3_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Good
                                         <input type="radio" id="wgood3" value="1" name="LANG3_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">Exc.
                                           <input type="radio" id="wexc3" value="2" name="LANG3_WR"/>
                                            <span class="checkmark"></span>
                                        </label>
                                                    
                                    </div>
                                </div> 
                                                    </div> </div></div>   </div>   
                    
                    </div><!--container for language education-->
                    
                     <div style="display:none;">
                    
                    <div class="row row-space" style=" margin-top: 10px;" id="exp2" > 
                              <div class="col-5">
                                <div class="input-group">
                           <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="35" 
                          class="input--style-4  "   id="EX2_COMP" placeholder="Company Name" name="EX2_COMP"
                           
                          />
                           </div></div>
                           <div class="col-5">
                                <div class="input-group">
                            <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="20" 
                          class="input--style-4  "    id="EX2_JOBT" placeholder="Job Title" name="EX2_JOBT"
                            
                          />
                             </div></div>
                           <div class="col-5">
                                <div class="input-group">
                            <input type="text" id="EX2_RESP" placeholder="Responsibilities"  class="input--style-4  " 
                        onkeyup="return z(this)"  onkeypress="return wordcheck(event)"     maxlength="35"    name="EX2_RESP"
                          />
                            </div></div>
                           <div class="col-5">
                                <div class="input-group">
                           <div class="input-group-icon">
                                    <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"      
                            class="input--style-4    " id="EX2_FR" name="EX2_FR"  onchange="rangecheck2()" />
                                         <!--   js-datepicker     <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->    
                                     </div>
                             
                                               
                                               </div></div>
                            <div class="col-5">
                                <div class="input-group">
                                   <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"   
                            class="input--style-4    " id="EX2_TO" name="EX2_TO"  onchange="rangecheck2()" />
                                  <label style="font-size: 9.5pt;" class="label">  Ongoing    <!--   js-datepicker     <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->
                                     <!--<input type="checkbox" title="Ongoing"   name="ongoing2" id="ongoing2" />-->
                                    </label>
                                    
                             
                            </div></div> 
                            
                         </div>
                    
                    </div><!--container for experience education-->
                    <div style="display:none;"  >
                    
                    
                    
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body> 

</html>
<!-- end document-->