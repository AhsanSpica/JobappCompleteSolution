<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="org.apache.commons.io.output.*,java.sql.*" %>



    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
            <meta name="HandheldFriendly" content="true"/>
            <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no"/>
            <!--<script type="text/javascript" src="resources/js/jquery-ui.min.js"></script>-->
            <script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script>
            <link type="text/css" rel="stylesheet" href="resources/css/jquery-ui.css"/>
          <link type="text/css" rel="stylesheet" href="resources/css/style.css"/>
         <script type="text/javascript" src="resources/js/jquery.maskedinput.js"></script>
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
            <script >
                  $('.form .stages label').click(function() {
  
	var radioButtons = $('.form input:radio');
	var selectedIndex = radioButtons.index(radioButtons.filter(':checked'));
        var marker=selectedIndex;
	
           var panel="panel"+marker;
      var counter=0;
      var elementid=[];
      var elementarray = new Array();

     
    var emptyc=0;
      var inputs = document.getElementById(panel).getElementsByTagName('input');
 
for (var p = 0, element; element = inputs[p++];) {
//   // alert("there are empty text fields on  panel no. " +elements.value );
    if (!(element.id === "p1")&&!(element.id === "p2")&&!(element.id === "p3")&&!(element.id === "p4")){ 
     counter++;
    if ( element.value === "")
       {emptyc++; if(element.id){
       elementid.push(element.id);}
       }
       }
     }
alert(elementid[0]);
      
//     if (!(emptyc===0))
//     {
//     alert("Haven't Filled all the fields   ");
//      document.getElementById(elementid[0]).focus();
//     return false;
//     }
     selectedIndex = selectedIndex + 1;   
});


          $(function() {
       
            $( "#DOB" ).datepicker({
              datepicker: true,minDate: new Date(1975,01,01),maxDate: new Date(1999,01,01), changeMonth: true, 
    changeYear: true, dateFormat:"dd-M-y"});
            
              $( "#EX1_FR" ).datepicker({
               datepicker: true,
            changeMonth: true, 
    changeYear: true, 
               dateFormat:"dd-M-y"});
      
            
              $( "#EX1_TO" ).datepicker({
               datepicker: true,
             changeMonth: true, 
    changeYear: true, 
               dateFormat:"dd-M-y"});
        
            
              $( "#TRAIN1_FR" ).datepicker({
               datepicker: true,  changeMonth: true, 
    changeYear: true, 
           // altFormat: "dd-M-y",
               dateFormat:"dd-M-y"});
      
            
              $( "#TRAIN1_TO" ).datepicker({
               datepicker: true,  changeMonth: true, 
    changeYear: true, 
          //  altFormat: "dd-M-y",
               dateFormat:"dd-M-y"});
        
            
               $( "#EX2_FR" ).datepicker({
               datepicker: true,  changeMonth: true, 
    changeYear: true, 
           //altFormat: "dd-M-y",
               dateFormat:"dd-M-y"});
        
            
              $( "#EX2_TO" ).datepicker({
                datepicker: true, changeMonth: true, 
    changeYear: true, 
           // altFormat: "dd-M-y",
               dateFormat:"dd-M-y"});
         
            
              $( "#TRAIN2_FR" ).datepicker({
               datepicker: true,  changeMonth: true, 
    changeYear: true, 
          //  altFormat: "dd-M-y",
               dateFormat:"dd-M-y"});
        
            
              $( "#TRAIN2_TO" ).datepicker({
               datepicker: true, changeMonth: true, 
    changeYear: true, 
          
               dateFormat:"dd-M-y"});
            
         });
        
  
   function hideprev()
          {
           document.getElementById('prevbt').style.display='none';
          }
          
          function showprev()
          {
           document.getElementById('prevbt').style.display='block';
          }
          
          //dateformat validotr
          function isDate(currVal) {
    if (currVal == '') return false;

    //Declare Regex  
    var rxDatePattern = /^(\d{1,2})(\/|-)([a-zA-Z]{3})(\/|-)(\d{2})$/;

    var dtArray = currVal.match(rxDatePattern); // is format OK?

    if (dtArray == null) return false;

    var dtDay = parseInt(dtArray[1]);
    var dtMonth = dtArray[3];
    var dtYear = parseInt(dtArray[4]);

    // need to change to lowerCase because switch is
    // case sensitive
    switch (dtMonth.toLowerCase()) {
        case 'jan':
            dtMonth = '01';
            break;
        case 'feb':
            dtMonth = '02';
            break;
        case 'mar':
            dtMonth = '03';
            break;
        case 'apr':
            dtMonth = '04';
            break;
        case 'may':
            dtMonth = '05';
            break;
        case 'jun':
            dtMonth = '06';
            break;
        case 'jul':
            dtMonth = '07';
            break;
        case 'aug':
            dtMonth = '08';
            break;
        case 'sep':
            dtMonth = '09';
            break;
        case 'oct':
            dtMonth = '10';
            break;
        case 'nov':
            dtMonth = '11';
            break;
        case 'dec':
            dtMonth = '12';
            break;
    }

    // convert date to number
    dtMonth = parseInt(dtMonth);

    if (isNaN(dtMonth)) return false;
    else if (dtMonth < 1 || dtMonth > 12) return false;
    else if (dtDay < 1 || dtDay > 31) return false;
    else if ((dtMonth == 4 || dtMonth == 6 || dtMonth == 9 || dtMonth == 11) && dtDay == 31) return false;
    else if (dtMonth == 2) {
        var isleap = (dtYear % 4 == 0 && (dtYear % 100 != 0 || dtYear % 400 == 0));
        if (dtDay > 29 || (dtDay == 29 && !isleap)) return false;
    }

    return true;
}
 function rangechecker(endDate,startDate) 
 {
 if (startDate >endDate){
return false;
}
 return true;
 }

  function formpost()
  {
   var namefr=document.getElementById('first_name').value;
    var namemi=document.getElementById('mid_name').value;
     var namelt=document.getElementById('last_name').value;
    var FNAME=document.getElementById('APP_F_NAME').value;
      var DOB=document.getElementById('DOB').value;
        var NIC=document.getElementById('CNIC').value;
    var EX1FR=document.getElementById('EX1_FR').value;
          var TRAIN2FR=document.getElementById('TRAIN2_FR').value;
           var TRAIN2TO=document.getElementById('TRAIN2_TO').value;
            var TRAIN1FR=document.getElementById('TRAIN1_FR').value;
            var TRAIN1TO=document.getElementById('TRAIN1_TO').value;
             var EX2FR=document.getElementById('EX2_FR').value;
              var EX2TO=document.getElementById('EX2_TO').value;
              var EX1TO=document.getElementById('EX1_FR').value;
             var one= rangechecker(TRAIN2TO,TRAIN2FR);  var two= rangechecker(TRAIN1TO,TRAIN1FR);  var three= rangechecker(EX2TO,EX2FR);  var four= rangechecker(EX1TO,EX1FR);
        var app_photo=document.getElementById('app_photo').value;
        var datetrue= isDate(DOB);
        
    if (!namefr==""&&!namemi==""&&!namelt==""&&!FNAME==""&&!DOB==""&&!NIC==""&&!app_photo==""
    &&(one==true&&two==true&&three==true&&four==true)){
 
 document.getElementById("form9").action = "inserter.jsp";
        document.forms["form9"].submit();
     //   alert("RANGES ARE OK");
}
         else 
    {
  
    alert("You didn't enter Compulsory fields. Also check range.");
   
    }
  }
   

function wordcheck(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode

   if(charCode != 32)
    {if (charCode > 31 && ((charCode < 65 || charCode > 90)&&(charCode < 97 || charCode > 122)))
       { return false;}}
       
return true;
}
   
     function toggle(switchElement) {
        if (switchElement.value == 'same')
     {  var same= document.getElementById('RES_ADD').value;
                document.getElementById('PERM_ADD').value = same;
               
     } 
     else
               {  document.getElementById('PERM_ADD').value = ''; }               
  }
  //bach gpa
     function bachgpa(currvalue) {
   var patt = new RegExp("\d{1}[\.]\d{2}");
    var x = document.getElementById("BACH_GPA");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,1})(\d{0,2})/).slice(1).join('.')
        .replace(/-*$/g, '');
  return x.value;
   }
   
}
  //inter gpa
            function gpaFunc(currvalue) {
   var patt = new RegExp("\d{2}[\.]\d{2}");
    var x = document.getElementById("INTER_GPA");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,2})(\d{0,2})/).slice(1).join('.')
        .replace(/-*$/g, '');
        return x.value;
   }
}
//matric gpa
 function matgpa(currvalue) {
   var patt = new RegExp("\d{2}[\.]\d{2}");
    var x = document.getElementById("MAT_GPA");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,2})(\d{0,2})/).slice(1).join('.')
        .replace(/-*$/g, '');
        return x.value;
   }
}
//master gpa
function masgpa(currvalue) {
   var patt = new RegExp("\d{1}[\.]\d{2}");
    var x = document.getElementById("MAS_GPA");
   var res = patt.test(x.value);
   if(!res){
   x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,1})(\d{0,2})/).slice(1).join('.')
        .replace(/-*$/g, '');
  return x.value;
   }
}
  
           function numFunc(currvalue) {
    var patt = new RegExp("\d{13}[\-]\d{7}");
    var x = document.getElementById("WORK_PH");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
          .match(/(\d{0,4})(\d{0,7})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
//ref mobile 1
 function refmob1(currvalue) {
    var patt = new RegExp("\d{4}[\-]\d{7}");
    var x = document.getElementById("REF_MOBILE_1");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,4})(\d{0,7})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
//ref mobile 2
 function refmob2(currvalue) {
    var patt = new RegExp("\d{4}[\-]\d{7}");
    var x = document.getElementById("REF_MOBILE_2");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
          .match(/(\d{0,4})(\d{0,7})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
//REF_PHONE_2
 function numFunc4(curr) {
   var patt = new RegExp("\d{8}");
    var x = document.getElementById("REF_PHONE_2");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,9})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
//ref 1
 function numFunc5(curr) {
   var patt = new RegExp("\d{8}");
    var x = document.getElementById("REF_PHONE_1");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,9})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
// home phone
           function numFunc3(curr) {
   var patt = new RegExp("\d{8}");
    var x = document.getElementById("RES_PH");
   var res = patt.test(curr);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,9})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}

 function numFunc2() {
   var patt = new RegExp("\d{4}");
    var x = document.getElementById("CELL_PH");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,13})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}
    function myFunc() {
  var patt = new RegExp("\d{5}[\-]\d{7}[\-]\d{1}");
   var x = document.getElementById("CNIC");
   var res = patt.test(x.value);
   if(!res){
    x.value = x.value
        .match(/\d*/g).join('')
        .match(/(\d{0,5})(\d{0,7})(\d{0,1})/).slice(1).join('-')
        .replace(/-*$/g, '');
   }
}



     function clicker2(){

 var sel=0;

    var radioButtons = document.getElementsByName("stage");
   for (var i = 0, length = radioButtons.length; i < length; i++) {
    if (radioButtons[i].checked) {
        sel=radioButtons[i].value;
       
        }
      }
          sel--;
            document.getElementById("p"+sel).checked = true;     
      }
     
      function clicker(){

 var sel=0;
var marker=0;
    var radioButtons = document.getElementsByName("stage");
   for (var i = 0, length = radioButtons.length; i < length; i++) {
    if (radioButtons[i].checked) {
        sel=radioButtons[i].value;
        marker=sel;
        }
      }
      var panel="panel"+marker;
      var counter=0;
      var elementid=[];
      var elementarray = new Array();

     
    var emptyc=0;
      var inputs = document.getElementById(panel).getElementsByTagName('input');
 // var elements = document.querySelectorAll("#"+panel +"input[type=text]")
for (var p = 0, element; element = inputs[p++];) {
//   // alert("there are empty text fields on  panel no. " +elements.value );
    if (!(element.id === "p1")&&!(element.id === "p2")&&!(element.id === "p3")&&!(element.id === "p4")){ 
     counter++;
    if ( element.value === "")
       {emptyc++; if(element.id){
       elementid.push(element.id);}
       }
       }
     }
  //  elementarray=elementid.split("\\ ,");
     // alert("total elements  "+counter+"   total empty  "+ emptyc );
      
     if (!(emptyc===0))
     {
     alert("Haven't Filled all the fields   ");
      document.getElementById(elementid[0]).focus();
     return false;
     }

          sel++;
            document.getElementById("p"+sel).checked = true;    
       
      }
       </script>
            <style>
    .stages {
	font-size: 0;
	text-align: justify;
        width:95.0%;
    
}

.stages:after {
	content: '';
	display: inline-block;
	font-size: 0;
	text-align: justify;
	width: 100%;
}

.dekho {
	display: none;
}
.header4{margin-left:45px;}
.table4 {table-layout: fixed; border-collapse: collapse;width:100.0%;}
.table4 td {overflow-x:hidden; overflow-y: hidden;}
.table3 {table-layout: fixed; border-collapse: collapse;width:100.0%;}
.table3 td {width: 100%; }
.table {margin: auto 45px auto 45px; table-layout: fixed; border-collapse: collapse;width:94.0%;overflow-x:auto;}
.table td {overflow-x:auto;}
.table5 {margin: auto 45px auto 45px; table-layout: fixed; border-collapse: collapse;width:90.0%;overflow-x:auto;}
.table5 td {overflow-x:auto; }
.table2 {margin: auto 45px auto 45px; table-layout: fixed; border-collapse: collapse; overflow-x:auto; }
.table2 td {width: 200px; overflow-x:auto;}

.sorter, .dir {width: 100%;} 

.stages label {
	background: #ffffff;
	border: solid 5px #c0c0c0;
	border-radius: 20%;
	cursor: pointer;
	display: inline-block;
	font-size: 0;
	font-weight: 700;
	height: 40px;
	line-height: 35px;
	position: relative;
	 text-align: center;
        
	vertical-align: top;
	width: 100px;
	z-index: 1;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
         margin-left: 30px;
         
}

 #panel1 input 
        { margin-left: 75.0px;}
#panel2 select { width: 80.0%;}
#panel1 select{margin-left: 72.0px;
box-sizing:border-box;
	display: block;
	padding: .4em;
	width: 80%;
         alignment-adjust: middle;
}

.label24{ margin-left: 47.0px;font-size: 10.0pt;}
.BASLABEL{margin-left: 77.0px;font-size: 10.0pt;}

 
body {
	
       background-color:  #2385c4;
	margin: 0;
	padding: 0 2em;
}

a {
	color:#2385c4; 
}

h2,
h4 {
	margin-top: 0;
}

.form {
	background: #ffffff;
	box-shadow: 0 5px 10px rgba(0, 0, 0, .4);
	margin: 4em;
	min-width:100px;
	padding: 1em;
 
}
.panels div {
	display: none;
}
#panel1,#panel2,#panel3,#panel4{ 
}
#form9{overflow-x:auto;   padding: 0;
  overflow: hidden; 
   }

.panels div {
	border-top: solid 1px #c0c0c0;
	margin: 1em 0 0;
	padding: 1em 0 0;
        min-width:20px;
    
}

input { 
        
	box-sizing:border-box;
	display: block;
	padding: .4em;
	width: 80%;
        min-width:20%;
         alignment-adjust: middle;
}
  button
 {background-color: #2385c4;
	border: 0;
	color: #ffffff;
	cursor: pointer;
	font-weight: 700;
	margin: 1em 0 0 0;
	padding: 1em;}
input[type='file']
 {background-color: #2385c4;
	border: 0;
	color: #ffffff;
	cursor: pointer;
	font-weight: 700;
	margin: 1em 0 0 0;
	padding: .5em;
          margin-left: 75.0px;
        }
      
input[type='button']
 {background-color: #2385c4;
	border: 0;
	color: #ffffff;
	cursor: pointer;
	font-weight: 700;
          margin-left: 20.0px;
	width:100px;
	padding: .4em;}
button:hover {
	opacity: 0.8;
}

.stages label:after {
	content: '\2713';
	color: #2385c4;
	display: inline-block;
	font-size: 16px;
}

#p1:checked ~ .stages label[for="p1"],
#p2:checked ~ .stages label[for="p2"],
#p3:checked ~ .stages label[for="p3"],
#p4:checked ~ .stages label[for="p4"],
#p5:checked ~ .stages label[for="p5"] {
	border-color: #2385c4;
}

.stages label.active{
	border-color: purple !important;
}

#p1:checked ~ .stages label,
#p2:checked ~ .stages label[for="p1"] ~ label,
#p3:checked ~ .stages label[for="p2"] ~ label,
#p4:checked ~ .stages label[for="p3"] ~ label,
#p5:checked ~ .stages label[for="p4"] ~ label {
	font-size: 1rem;
}

#p1:checked ~ .stages label:after,
#p2:checked ~ .stages label[for="p1"] ~ label:after,
#p3:checked ~ .stages label[for="p2"] ~ label:after,
#p4:checked ~ .stages label[for="p3"] ~ label:after,
#p5:checked ~ .stages label[for="p4"] ~ label:after{
	display: none;
}

.progress > span {
	background: #2385c4;
	display: inline-block;
	height: 5px;
	transform: translateY(-2.43em);
        margin-left: 35.0px;
	transition: 0.001s;
	width: 0;
     text-align: center;
}

#p2:checked ~ .progress span {
	width: calc(100% / 5 * 1.5);
}

#p3:checked ~ .progress span {
	width: calc(100% / 5 * 3);
}

#p4:checked ~ .progress span {
	width: calc(100% / 5 * 4.1);
}

#p5:checked ~ .progress span {
	width: calc(100% / 5 * 5);
}


#p1:checked ~ .panels [data-panel="one"],
#p2:checked ~ .panels [data-panel="two"],
#p3:checked ~ .panels [data-panel="three"],
#p4:checked ~ .panels [data-panel="four"],
#p5:checked ~ .panels [data-panel="five"],
#p6:checked ~ .panels [data-panel="six"] {
	display: block;      
   -webkit-justify-content: center; justify-content: center; padding: 10px 0 5px 0; 
}


/* Custom code for the demo */

html,

textarea{overflow-x:auto;
    }
input,
select,
textarea {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
}
 
    </style>
            <!--    background-color: #0cc39f;-->
   
        </head>
        <body onload="hideprev()">
            <form name="form9" id="form9" method="POST" enctype="multipart/form-data">
                <div class="form">
                 <div style="text-align: justify;">  <table > <tr ><td   ><div style="text-align: left; ">
                      <a href="http://www.efuinsurance.com/">  <img alt="Efu Insurance LTD"  height="75" width="64" src="resources/images/logo_efu.png"/></a>
                    </div></td><td   ></td>
                   <td > <div style="margin-left:400.0px;  ">
                        <img alt="Efu Insurance LTD" height="35" width="239" src="resources/images/efuTxtLogo.gif"/>
                    </div></td></tr></table></div>
                    <center>
                        <h2>
                            Application Form
                        </h2>
                       
                            <h3>
                                Management Trainee Program &ndash; 2017
                            </h3>
                      
                        <p style=" font-size:14.0px ;">
                            &nbsp;
                        </p>
                        <!--<p style=" font-size:11.0px ;">
                           (Accepting from Karachi only)
                        </p>-->
                    </center>
                     
                    <input id="p1" value="1" type="radio" class="dekho" name="stage" checked="checked"/>
                     
                    <input id="p2" value="2" type="radio" class="dekho" name="stage"/>
                     
                    <input id="p3" value="3" type="radio" class="dekho" name="stage"/>
                     
                    <input id="p4" value="4" type="radio" class="dekho" name="stage"/><!--<input id="p5" value="5" type="radio" class="dekho" name="stage"/>-->
                    <div class="stages">
                        <label for="p1"> Basic Info </label>
                         
                        <label for="p2"> Education </label>
                         
                        <label for="p3">Achievements</label>
                         
                        <label for="p4"> Misc. </label><!--<label for="p5">5</label>-->
                    </div>
                     <span class="progress">
                    <span></span></span>

                    <div class="panels">
                        <div id="panel1"  data-panel="one">
                            <h4 style="margin-left: 77px;">
                                Personal Information
                            </h4>
                                <table><tr ><td colspan="2">   <b style="margin-left: 77px;color: Red;">*</b>
                            
                            <label style=" font-size: 10.0pt;" for="APP_NAME">
                                Applicant Name :&nbsp;
                            </label></td></tr>
                             
                          <tr style="min-width:2%;" ><td style="min-width:2%;max-width:230px;">
         <input  type="text" id="first_name" name="first_name" 
                                 onfocus="hideprev()"   onkeypress="return wordcheck(event)" placeholder="First Name" maxlength="15"/></td>
                                 <td style="min-width:2%;max-width:210px;">
          <input  type="text" id="mid_name" name="mid_name" 
                                 onfocus="hideprev()"   onkeypress="return wordcheck(event)" placeholder="Middle Name" maxlength="15"/>
                          </td> 
                           <td style="min-width:2%;max-width:218px;">
          <input  type="text" id="last_name" name="last_name" 
                                 onfocus="hideprev()"   onkeypress="return wordcheck(event)" placeholder="Last Name" maxlength="15"/>
                          </td>
                          </tr> </table>
                              <!--<b style="margin-left: 77px;color: Red;">*</b>
                            
                            <label style=" font-size: 10.0pt;" for="APP_NAME">
                                Applicant Name :&nbsp;
                            </label>-->
                             
                            
                             
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="APP_F_NAME">
                                Father's Name :&nbsp;
                            </label>
                             
                            <input type="text"  id="APP_F_NAME" onkeypress="return wordcheck(event)"
                              maxlength="40"   onfocus="hideprev()"     name="APP_F_NAME" placeholder="Father's Name"/>
                             
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="CNIC">
                                CNIC :&nbsp;
                            </label>
                            <!--  onkeyup="this.value = fixDatePattern(this.value)"  -->
                            <input  type="text" maxlength="15" id="CNIC" name="CNIC" onkeypress = "myFunc()"
                              placeholder="CNIC"/>
                           
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.5pt;">
                                Gender :
                            </label>
                            <table>
                                <tr>
                                    <td>
                                        <label class="BASLABEL" >
                                            Male :
                                        </label>
                                    </td>
                                    <td>
                                        <label class="label24" >
                                            Female :
                                        </label>
                                    </td>
                                </tr>
                            </table>
                            <table  style="margin-left:10px;">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td style="height:40px;width:40px;">
                                        <input  id="male" value="M" checked="checked" type="radio" style="height:30%;width:30%;" name="GENDER"/>
                                    </td>
                                    <td  style="height:50px;width:60px;">
                                        <input id="female" value="F" type="radio" name="GENDER" style="height:30%;width:30%;"/>
                                    </td>
                                </tr>
                            </table>
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="dob">
                                Date Of Birth :
                            </label>
              
                            <input  id="DOB"  onfocus="hideprev()"   placeholder="29-MAR-17"  maxlength="9" readonly='readonly' name="DOB"/>
                         
                           
                            <b style="margin-left: 77px;color: Red;">*</b><label style=" font-size: 10.0pt;"
                                                                                 for="app_photo">
                                Applicant Picture :&nbsp;
                            </label>
                             
                            <input type="file"  onfocus="hideprev()" title="Choose Picture" name="app_photo" id="app_photo"/>
                            <table>
                                <tr><td>&nbsp;</td> <td>&nbsp;</td></tr> </table>
                            <i style=" margin-left: 164.0px; color: #b3c5e3;" >-------------------------------Contact Details----------------------------------- </i>   
                            <table>
                                <tr>
                                    <td>
                                        <label class="BASLABEL">
                                            Address :&nbsp;
                                        </label>
                                    </td>
                                </tr><tr>
                                    <td>
                                        <label class="BASLABEL" for="same">
                                            Same :&nbsp;
                                        </label>
                                    </td>
                                    <td>
                                        <label class="label24"  for="differ">
                                            Different :&nbsp;
                                        </label>
                                    </td>
                                </tr>
                            </table>
                            <table style="margin-left:10px;">
                                <tr>
                                    <td style="height:50px;width:90px;">
                                        <input class="panel1" id="same"  type="radio"  style="height:30%;width:30%;"
                                           value="same"  onClick="toggle(this)"  name="addrad"/>
                                   </td><td style="height:50px;width:90px;">
                                        <input class="panel1" onClick="toggle(this)" checked="checked" id="differ" value="differ" style="height:30%;width:30%;" type="radio" name="addrad"/>
                                    </td>
                                </tr>
                            </table>
                            <input id="RES_ADD" name="RES_ADD" type="text"  maxlength="60"    placeholder="Current Home Address"/>
                             
                            <input id="PERM_ADD" name="PERM_ADD" type="text" maxlength="60"    placeholder="Permanent Home Address"/>
                             
                            <label class="BASLABEL">
                                Applicant City :&nbsp;
                            </label>
    <!--<input  type="text" list="combobox"  placeholder="Enter City" id="CITY_ID" name="CITY_ID" />-->
                            <table>
                                <tr>
                                    <td>
                                        <select id="CITY_ID" name="CITY_ID">
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
                                    </td>
                                </tr>
                            </table>
                           <table><tr><td colspan="2"> <label class="BASLABEL">
                                TelePhone :
                            </label></td colspan="2"></tr>
                             
                          <tr><td colspan="2" style="width:20px">
         <input type="text" style="max-width: 40%;min-width:5%;" readonly="readonly" value="+92"/> </td><td  style="width:530px">
         <input style="margin-left:23px;max-width:100%; min-width:5%; float:left;" id="RES_PH" name="RES_PH" onblur = "numFunc3(this.value)" type="text" maxlength="8" placeholder=" 34334444"/>
                          </td>  </tr> </table>
                          
                          
                          
                          <table><tr><td colspan="2">  <label class="BASLABEL">Work Phone :</label></td></tr>
                             
                          <tr><td style="width:20px">
         <input type="text" style="max-width: 60%;min-width:5%;" readonly="readonly" value="+92"/> </td><td style="width:530px">
          <input id="WORK_PH" style="margin-left:74.5px;max-width:100%;  min-width:0.3%;"  onblur = "numFunc(this.value)" name="WORK_PH" type="text" maxlength="11" onfocus="hideprev()" 
                                   placeholder=" 03013334444"/>
                          </td>  </tr> </table>
                           
                             
                             <table><tr><td colspan="2">   <label class="BASLABEL" for="mob">Mobile :</label></td></tr>
                             
                          <tr><td colspan="2" style="width:20px">
         <input type="text" style="max-width: 45%;min-width:5%;" readonly="readonly" value="+92"/> </td><td style="width:530px">
          <input id="CELL_PH" style="margin-left:40px;max-width:100%; min-width:5%;"  onblur = "numFunc2()" placeholder=" 03013334444" name="CELL_PH" type="text"
                                           maxlength="11"/>
                          </td>  </tr> </table> 
                             
                          
                             
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="email">
                                Email :&nbsp;
                            </label>
                             
                            <input type="email" id="email" name="email"  maxlength="40"  onfocus="hideprev()"    placeholder="Email"/>
                           
                        </div> <!-- end of panel 1-->
                        <div id="panel2"   data-panel="two">
                            <h4 class="header4">
                                Education
                            </h4>
                              <center>
                                <h5>Post Graduate / Master's Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;"  >
                                        <tr>
                                            <td>
                                                <select class="dir" id="masters" name="masters" onfocus="showprev()">
                                                    <option>
                                                        Please Select Masters Education
                                                    </option>
                                                    <option>
                                                        Business Administration and Management(Msc or MBA)
                                                    </option>
                                                    <option>
                                                        Master Of Business Administration (MBA)
                                                    </option>
                                                    <option>
                                                        Economics (Msc)
                                                    </option>
                                                    <option>
                                                        Finance (Msc)
                                                    </option>
                                                    <option>
                                                        Marketing (Msc)
                                                    </option>
                                                    <option>
                                                        Computer Science (Msc)
                                                    </option>
                                                    <option>
                                                        Information Technology (Msc)
                                                    </option>
                                                    <option>
                                                        Internatinal Business (Msc)
                                                    </option>
                                                    <option>
                                                        Operations Management (Msc)
                                                    </option>
                                                    <option>
                                                        Corporate Social Responsibility-CSR (MBA or Msc)
                                                    </option>
                                                    <option>
                                                        leaderShip/Strategy (Msc)
                                                    </option>
                                                    <option>
                                                        (Msc) Mathematics
                                                    </option>
                                                    <option>
                                                        (Master of Arts)
                                                    </option>
                                                    <option>
                                                        Post Graduate Diploma (PGD)
                                                    </option>
                                                    <option>
                                                        Psychology
                                                    </option>
                                                    <option>
                                                        Other Qualification (Please Secify in Other)
                                                    </option>
                                                </select>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input  maxlength="35"    type="text" id="MAS_OTHER" name="MAS_OTHER" placeholder=" Other Qualification " />
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input type="text" id="MAS_MAJOR" onkeypress="return wordcheck(event)"
                                                  maxlength="35"       name="MAS_MAJOR" placeholder="Specialization"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="MAS_UNIV" onkeypress="return wordcheck(event)"
                                                  maxlength="35"       name="MAS_UNIV" placeholder="Masters University"/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input  id="MAS_GPA" name="MAS_GPA" onkeyup="this.value=masgpa(this.value)"
                                              type="text" maxlength="4"  placeholder="Masters CGPA or %"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="MAS_PASS_YR" name="MAS_PASS_YR" width="150px">
                                                     <option>yet to pass</option>
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
                                                   
                                                </select>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
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
                                        </select>   
                                                <!--<input type="text" onkeypress="return wordcheck(event)"
                                                     id="MAS_CITY_ID"   name="MAS_CITY_ID" placeholder="City"/>-->
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                                
                                  <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                                <center>
                                <h5>Please Select Under-Graduate / Baccalaureate Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;" >
                                        <tr>
                                            <td>
                                                <select class="dir" id="BACHELORS" name="BACHELORS" onfocus="showprev()">
                                                    <option>
                                                        Please Select Baccalaureate Education
                                                    </option>
                                                    <option>
                                                        Business Administration and Management(Baccalaureate or BBA)
                                                    </option>
                                                    <option>
                                                        Baccalaureate Of Business Administration (BBA)
                                                    </option>
                                                    <option>
                                                        Economics (Baccalaureate of Science)
                                                    </option>
                                                    <option>
                                                        Finance (Baccalaureate of Science)
                                                    </option>
                                                    <option>
                                                        Under Graduate in Marketing(Please specify)
                                                    </option>
                                                    <option>
                                                        Computer Science (Baccalaureate of Science)
                                                    </option>
                                                    <option>
                                                        Information Technology (Baccalaureate of Science)
                                                    </option>
                                                    <option>
                                                        Internatinal Business (BS or BBA)
                                                    </option>
                                                    <option>
                                                        Operations Management (BS or BBA)
                                                    </option>
                                                    <option>
                                                        Corporate Social Responsibility-CSR (BS or BBA)
                                                    </option>
                                                    <option>
                                                        leaderShip/Strategy (BS or BBA)
                                                    </option>
                                                    <option>
                                                        leaderShip/Strategy (Baccalaureate of Science)
                                                    </option>
                                                    <option>
                                                        (Baccalaureate in Arts)
                                                    </option>
                                                    <option>
                                                        Baccalaureate of Science Mathematics
                                                    </option>
                                                    <option>
                                                        Under Graduate Diploma
                                                    </option>
                                                    <option>
                                                        BA-LL.B Law and Policy
                                                    </option>
                                                    <option>
                                                        Psychology (Baccalaureate)
                                                    </option>
                                                    <option>
                                                        BS(Please Specify in Other)
                                                    </option>
                                                    <option>
                                                         Other Qualification (Please Secify in Other)
                                                    </option>
                                                </select>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="BACH_OTHER" onkeypress="return wordcheck(event)"
                                                 maxlength="35"        name="BACH_OTHER" placeholder=" Other Qualification "/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input type="text" id="BACH_MAJOR" onkeypress="return wordcheck(event)"
                                                  maxlength="35"       name="BACH_MAJOR" placeholder="Specialization"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="BACH_UNIV" onkeypress="return wordcheck(event)"
                                                 maxlength="35"        name="BACH_UNIV" placeholder="Bachelor's University"/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input    type="text" maxlength="4" id="BACH_GPA" name="BACH_GPA"
                                                 onkeyup="this.value=bachgpa(this.value)"      placeholder="Bachelor's CGPA"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="BACH_PASS_YR" name="BACH_PASS_YR" width="150px">
                                                     <option>yet to pass</option>
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
                                                   
                                                </select>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                            <select  id="BACH_CITY_ID"  name="BACH_CITY_ID">
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
                                        </select>
                                            
                                                <!--<input type="text" id="BACH_CITY_ID"
                                                       onkeypress="return wordcheck(event)" name="BACH_CITY_ID"
                                                       placeholder="City"/>-->
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                                     <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                                <center>
                                 <h5>Please Select Intermediate Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;">
                                        <tr>
                                            <td>
                                                <select class="dir" id="INTER" name="INTER">
                                                  <option>
                                                        Please Select HighSchool Education
                                                    </option>
                                                    <option>
                                                       A-Level 
                                                    </option>
                                                    <option>
                                                        FSEE
                                                    </option>
                                                    
                                                    <option>
                                                        American HighSchool
                                                    </option>
                                                    <option>
                                                        O&amp;A-Level Combined
                                                    </option>
                                                    <option>
                                                        Agha Khan Board High School
                                                    </option>
                                                 
                                                   
                                                </select>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="INTER_OTHER" onkeypress="return wordcheck(event)"
                                              maxlength="35"           name="INTER_OTHER" placeholder=" Other Qualification "/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input type="text" id="INTER_MAJOR" onkeypress="return wordcheck(event)"
                                               maxlength="35"          name="INTER_MAJOR" placeholder="Inter Major"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="INTER_COLL" onkeypress="return wordcheck(event)"
                                                 maxlength="35"        name="INTER_COLL" placeholder="High School College"/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input   id="INTER_GPA" name="INTER_GPA" onkeyup="this.value=gpaFunc(this.value)"
                                                   type="text" maxlength="5"  placeholder="Percentage"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="INTER_PASS_YR" name="INTER_PASS_YR"
                                                        width="150px">
                                                     <option>yet to pass</option>
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
                                                </select>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                           <select   id="INTER_CITY_ID" name="INTER_CITY_ID">
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
                                        </select>
                                                <!--<input type="text" id="INTER_CITY_ID" name="INTER_CITY_ID"
                                                       onkeypress="return wordcheck(event)"
                                                       placeholder="City"/>-->
                                            </td>
                                            <td style=" grid-row-align: end;">&nbsp;</td>
                                        </tr>
                                    </table>
                                </center>
                                    <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                                <center>
                                <h5>Please Select Matric Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;">
                                        <tr>
                                            <td>
                                                <select class="dir" id="MATRIC" name="MATRIC">
                                                    <option>
                                                        Please Select HighSchool Education
                                                    </option>
                                                    <option>
                                                      GCSE O Level (Detail all subjects in other)
                                                    </option>
                                                    <option>
                                                        SSC (Detail all subjects in other)
                                                    </option>
                                                    
                                                    <option>
                                                        American HighSchool (Detail in other)
                                                    </option>
                                                    <option>
                                                        O&amp;A-Level Combined (Detail in other)
                                                    </option>
                                                    <option>
                                                        Agha Khan Board Secondary School Certificate
                                                    </option>
                                                    <option>  Other Qualification- Detail in Other </option>
                                                </select>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="MAT_SCHOOL" onkeypress="return wordcheck(event)"
                                                 maxlength="35"        name="MAT_SCHOOL" placeholder=" Other Qualification "/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input type="text" id="MAT_MAJOR" onkeypress="return wordcheck(event)"
                                                maxlength="35"         name="MAT_MAJOR" placeholder=" Major"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="MAT_OTHER" onkeypress="return wordcheck(event)"
                                                    maxlength="35"     name="MAT_OTHER" placeholder="Institute"/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input     id="MAT_GPA" name="MAT_GPA"  type="text" maxlength="5"
                                                 onkeyup="this.value=matgpa(this.value)"    placeholder="Percentage"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="MAT_PASS_YR" name="MAT_PASS_YR" width="150px">
                                                     <option>yet to pass</option>
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
                                                </select>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>  <select   id="MAT_CITY_ID" 
                                                       name="MAT_CITY_ID">
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
                                        </select>
                                            
                                              
                                            </td>
                                            <td style=" grid-row-align: end;">&nbsp;</td>
                                        </tr>
                                    </table>
                                </center>
                         
                        </div> <!-- end of panel 2-->
                        <div id="panel3" data-panel="three">
                            <h4 class="header4">
                                Academic Achievements/Projects
                            </h4>
                             
                            <textarea rows="6"  class="header4" cols="52" id="PROJECTS" name="PROJECTS" onfocus="showprev()">Add your Projects here(Max Three)</textarea>
                             
                            <textarea rows="6" style="margin-right:35px;margin-left:20px;" cols="52" id="ACHEIVEMENTS" name="ACHEIVEMENTS" onfocus="showprev()">Add your Achievements here (Max Three)</textarea>
                             
                            <h4 class="header4">
                                Professional Qualifications
                            </h4>
                            <table class="table2" border="1" style="border:4.0px ;" >
                                <tr>
                                    <td>
                                        <input type="text" id="PQ_1" onkeypress="return wordcheck(event)"
                                           maxlength="35"      placeholder="Qualification" name="PQ_1"/>
                                    </td>
                                    <td>
                                        <input type="text" id="PQ1_INS" onkeypress="return wordcheck(event)"
                                           maxlength="35"      placeholder="Institute/University" name="PQ1_INS"/>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <select class="dir" id="PQ1_STATUS" name="PQ1_STATUS">
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <input type="text" id="PQ1_MAJOR" onkeypress="return wordcheck(event)"
                                        maxlength="35"         placeholder="Specialization" name="PQ1_MAJOR"/>
                                    </td>
                                    <td>
                                        <select class="dir" id="PQ1_PASS_YR" name="PQ1_PASS_YR" width="150px">
                                             <option>yet to pass</option>
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
                                            
                                        </select>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" id="PQ_2" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Qualification" name="PQ_2"/>
                                    </td>
                                    <td>
                                        <input type="text" id="PQ2_INS" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Institute/University" name="PQ2_INS"/>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <select class="dir" id="PQ2_STATUS" name="PQ2_STATUS">
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <input type="text" id="PQ2_MAJOR" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Specialization" name="PQ2_MAJOR"/>
                                    </td>
                                    <td>
                                        <select class="dir" id="PQ2_PASS_YR" name="PQ2_PASS_YR" width="150px">
                                             <option>yet to pass</option>
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
                                           
                                        </select>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" id="PQ_3" onkeypress="return wordcheck(event)"
                                           maxlength="35"      placeholder="Qualification" name="PQ_3"/>
                                    </td>
                                    <td>
                                        <input type="text" id="PQ3_INS" onkeypress="return wordcheck(event)"
                                            maxlength="35"     placeholder="Institute/University" name="PQ3_INS"/>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <select class="dir" id="PQ3_STATUS" name="PQ3_STATUS">
                                            <option>
                                                Status
                                            </option>
                                            <option style=" color:Blue;">
                                                COMPLETE
                                            </option>
                                            <option style=" color:Red;">
                                                INCOMPLETE
                                            </option>
                                        </select>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <input type="text" id="PQ3_MAJOR" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Specialization" name="PQ3_MAJOR"/>
                                    </td>
                                    <td>
                                        <select class="dir" id="PQ3_PASS_YR" name="PQ3_PASS_YR" width="150px">
                                            <option>yet to pass</option>
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
                                            
                                        </select>
                                    </td>
                                </tr>
                            </table>
                            <h4 class="header4">
                                Other Experiences
                            </h4>
                            <table class="table2"  border="1" style="border:4.0px ;">
                                <tr>
                                    <td>
                                        <input type="text"  maxlength="35"  id="EX1_COMP" placeholder="Company Name" name="EX1_COMP"/>
                                    </td>
                                    <td>
                                        <input type="text"  maxlength="35"  id="EX1_JOBT" placeholder="Job Title" name="EX1_JOBT"/>
                                    </td>
                                    <td>
                                        <input type="text" id="EX1_RESP" placeholder="Responsibilities"
                                             maxlength="35"    name="EX1_RESP"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly="readonly" placeholder="29-MAR-17"
                                               id="EX1_FR" name="EX1_FR"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly='readonly'placeholder="29-MAR-17"
                                                id="EX1_TO" name="EX1_TO"/>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"  id="EX2_COMP" placeholder="Company Name" name="EX2_COMP"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="EX2_JOBT" placeholder="Job Title" name="EX2_JOBT"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="EX2_RESP" placeholder="Responsibilities"
                                               name="EX2_RESP"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               id="EX2_FR" name="EX2_FR"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               id="EX2_TO" name="EX2_TO"/>
                                    </td>
                                </tr>
                            </table>
                            <h4 class="header4">
                                Trainings
                            </h4>
                            <table class="table2"  border="1" style="border:4.0px ;">
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"  id="TRAIN_1" placeholder="Name of Training" name="TRAIN_1"/>
                                    </td>
                                    <td>
                                        <input id="TRAIN1_FR" maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               onkeypress="return datecheck(event)" name="TRAIN1_FR"/>
                                    </td>
                                    <td>
                                        <input maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               onkeypress="return datecheck(event)" id="TRAIN1_TO" name="TRAIN1_TO"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="TRAIN1_ORG" placeholder="Providing Organization"
                                               name="TRAIN1_ORG"/>
                                    </td>
                                   
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"  id="TRAIN_2" placeholder="Name of Training" name="TRAIN_2"/>
                                    </td>
                                    <td>
                                        <input id="TRAIN2_FR" maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               onkeypress="return datecheck(event)" name="TRAIN2_FR"/>
                                    </td>
                                    <td>
                                        <input id="TRAIN2_TO" maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                               onkeypress="return datecheck(event)" name="TRAIN2_TO"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="TRAIN2_ORG" placeholder="Providing Organization"
                                               name="TRAIN2_ORG"/>
                                    </td>
                                  
                                </tr>
                            </table>
                        </div>
                       <!-- end of panel 3-->
                        <div id="panel4" data-panel="four">
                            <h3 class="header4">
                                Miscellaneous Details
                            </h3>
                             
                            <h4 class="header4">
                                References
                            </h4>
                            <table class="table5" border="1"  style="border:4.0px ;">
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_NAME_1" placeholder="Referring Individual"
                                            onfocus="showprev()"    onkeypress="return wordcheck(event)" name="REF_NAME_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_DESIG_1" placeholder="Designation"
                                               name="REF_DESIG_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ORG_1" placeholder="Organization" name="REF_ORG_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ADD_1" placeholder="Address" name="REF_ADD_1"/>
                                    </td>
                                    <td>
                                        <input type="text" id="REF_PHONE_1" placeholder=" Office Phone Number"  maxlength="8"
                                        onblur = "numFunc5(this.value)"       name="REF_PHONE_1"/>
                                    </td>
                                    <td>
                                        <input type="tel" id="REF_MOBILE_1" placeholder="Mobile Number" size="11"
                                       onblur = "refmob1(this.value)"        name="REF_MOBILE_1"/>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_NAME_2" placeholder="Referring Individual"
                                               onkeypress="return wordcheck(event)" name="REF_NAME_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_DESIG_2" placeholder="Designation"
                                               name="REF_DESIG_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ORG_2" placeholder="Organization" name="REF_ORG_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ADD_2" placeholder="Address" name="REF_ADD_2"/>
                                    </td>
                                    <td>
                                        <input type="text" id="REF_PHONE_2" placeholder=" Office Phone Number"  maxlength="8"
                                           onblur = "numFunc4(this.value)"    name="REF_PHONE_2"/>
                                    </td>
                                    <td>
                                        <input type="tel" id="REF_MOBILE_2" placeholder="Mobile Number" size="11"
                                             onblur = "refmob2(this.value)"  name="REF_MOBILE_2"/>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <h4 class="header4">
                                Languages
                            </h4>
                            <table class="table5" border="1" style="border:4.0px ;">
                                <tr>
                                    <th>
                                        Language
                                    </th>
                                    <th style=" font-size: 10.0pt;">
                                        Speaking
                                    </th>
                                    <th style=" font-size: 10.0pt;">
                                        Reading
                                    </th>
                                    <th style=" font-size: 10.0pt;">
                                        Writing
                                    </th>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text"  maxlength="15" id="LANG_1" name="LANG_1"/>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="savg" checked="checked" name="LANG1_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sgood" value="1" name="LANG1_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sexc" value="2" name="LANG1_SP"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="ravg" checked="checked" name="LANG1_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rgood" value="1" name="LANG1_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rexc" value="2" name="LANG1_RD"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="wavg" checked="checked" name="LANG1_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wgood" value="1" name="LANG1_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wexc" value="2" name="LANG1_WR"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" maxlength="10"  id="LANG_2" name="LANG_2"/>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" checked="checked" id="savg2" name="LANG2_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sgood2" value="1" name="LANG2_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sexc2" value="2" name="LANG2_SP"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="ravg2" checked="checked" name="LANG2_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rgood2" value="1" name="LANG2_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rexc2" value="2" name="LANG2_RD"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="wavg2" checked="checked" name="LANG2_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wgood2" value="1" name="LANG2_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wexc2" value="2" name="LANG2_WR"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <input type="text" id="LANG_3" maxlength="10"  name="LANG_3"/>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="savg3" checked="checked" name="LANG3_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sgood3" value="1" name="LANG3_SP"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="sexc3" value="2" name="LANG3_SP"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="ravg3" checked="checked" name="LANG3_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rgood3" value="1" name="LANG3_RD"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="rexc3" value="2" name="LANG3_RD"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="table4">
                                            <tr>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Avg</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Good</td>
                                                <td style=" font-size: 9.0pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exc.</td>
                                            </tr>
                                             
                                            <tr>
                                                <td>
                                                    <input type="radio" value="0" id="wavg3" checked="checked" name="LANG3_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wgood3" value="1" name="LANG3_WR"/>
                                                </td>
                                                <td>
                                                    <input type="radio" id="wexc3" value="2" name="LANG3_WR"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <table class="table5" border="1" style="border:4.0px ;">
                                <tr>
                                    <th>
                                        &nbsp;
                                    </th>
                                    <th style=" font-size: 9.5pt;">
                                        Beginner
                                    </th>
                                    <th style=" font-size: 9.5pt;">
                                        Average
                                    </th>
                                    <th style=" font-size: 9.5pt">
                                        Good
                                    </th>
                                    <th style=" font-size:9.5pt;">
                                        Excellent
                                    </th>
                                </tr>
                                 
                                <tr>
                                    <td>
                                        <h4 >
                                            Computer Skills
                                        </h4>
                                    </td>
                                    <td>
                                        <input type="radio" id="CBEG" value="0" checked="checked" name="COMP_SKILL"/>
                                    </td>
                                    <td>
                                        <input type="radio" id="CAVG" value="1" name="COMP_SKILL"/>
                                    </td>
                                    <td>
                                        <input type="radio" id="CGOOD" value="2" name="COMP_SKILL"/>
                                    </td>
                                    <td>
                                        <input type="radio" id="CEXC" value="3" name="COMP_SKILL"/>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                           <textarea class="header4" id="HOBBIES" rows="7" cols="40" name="HOBBIES"
                                      placeholder="Share your Hobbies Please"></textarea>
                             
                            <textarea id="JUSTIFY" rows="7" cols="40" name="JUSTIFY"
                                      placeholder="How would you like to Justify your desire to seek employment at EFU"></textarea>
                             
                            <button value="Submit Application" name="submit2" id="submit2" onclick="formpost()" >
                                Submit Application
                            </button>
                        
                    </div> <!-- end of panel 4-->
                    <table>
                        <tr>
                            <td>&nbsp;</td>
                        </tr><tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                  <table> <tr><td><input type="button"  name="yno" style="margin-bottom:48px; margin-left: 74.5px;" id="yno" onclick="clicker()" value="Next"/>
                    </td><td>  <input type="button"  style="margin-bottom:48px;  margin-left: 420.0px;" name="prevbt" id="prevbt" onclick="clicker2()" value="previous"/>
                  </td> </tr> </table>
                </div>
            </div></form>
        </body>
    </html>
