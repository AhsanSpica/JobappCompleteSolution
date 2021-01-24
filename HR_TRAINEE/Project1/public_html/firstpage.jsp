<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="java.sql.*" %>



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
         <link type="text/css" rel="stylesheet" href="resources/css/melon.datepicker.css"/>
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
          
          
            <script >
       
       /*  if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|BB|PlayBook|IEMobile|Windows Phone|Kindle|Silk|Opera Mini/i.test(navigator.userAgent)) 
         {
        document.getElementById("msgdisp").innerHTML = "Please make sure JavaScript is enabled on you Mobile Device";
         
        //  alert("Please make sure JavaScript is enabled on you Mobile Device");
               }   */  
          
            
                function date_time(id)
                {
                      var  date = new Date;
                     var   year = date.getFullYear();
                     var   month = date.getMonth();
                     var   months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
                     var   d = date.getDate();
                      var  day = date.getDay();
                    var   days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
                     var   h = date.getHours();
                        if(h<10)
                        {
                                h = "0"+h;
                        }
                        m = date.getMinutes();
                        if(m<10)
                        {
                                m = "0"+m;
                        }
                        s = date.getSeconds();
                        if(s<10)
                        {
                                s = "0"+s;
                        }
                        result = ''+days[day]+' '+months[month]+' '+d+' '+year+' ';
                        document.getElementById(id).innerHTML = result;
                        setTimeout('date_time("'+id+'");','1000');
                        return true;
                }
                 function disableEnterKey(e)
                {
                     var key;      
                     if(window.event)
                          key = window.event.keyCode; //IE
                     else
                          key = e.which; //firefox      
                
                     return (key != 13);
                }
                
                          $(function() {
                       
                            $( "#DOB" ).datepicker({
                              datepicker: true,minDate: new Date(1985,01,01),maxDate: new Date(1999,12,01), changeMonth: true, 
                    changeYear: true,  yearRange: "-100:-16",dateFormat:"dd-M-y"});
                            
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
                           document.getElementById('yno').style.display='block';
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
                    $(document).ready(function() {
                     document.getElementById('prevbt').style.display='none';
                    
                
                     
                     
                  $('#checky').change(function () {
                    $('#submit2').prop("disabled", !this.checked);
                }).change()
                //    $("#pq2").hide(); $("#pq3").hide(); $("#tr2").hide(); $("#exp2").hide();
                });
                
                document.addEventListener("DOMContentLoaded", function() {
                 document.getElementById("pq2").style.visibility='hidden';
                  document.getElementById("pq3").style.visibility='hidden';
                  document.getElementById("exp2").style.visibility='hidden';
                  document.getElementById("tr2").style.visibility='hidden';
                 document.getElementById("rowlang2").style.visibility='hidden';
                 document.getElementById("rowlang3").style.visibility='hidden';
                });
                function z(evt)
                {
                
                var z=evt.value;
                //alert(z);
                var x=z.replace(/\b./g, function(m){ return m.toUpperCase(); });
                //alert(x);
                evt.value=x;
                }
                
                         function addmorexp()
                            { var exp1=document.getElementById("exp2");
                           
                           
                             exp1.style.visibility = 'visible';}
                           
                             function addmoretr()
                            { var tr2=document.getElementById("tr2");
                            
                            
                             tr2.style.visibility = 'visible';}
                           
                        function addmore()
                            { 
                           
                            var pq2=document.getElementById("pq2");
                            var pq3 =document.getElementById("pq3");
                            if (pq2.style.visibility == 'hidden')
                             {pq2.style.visibility = 'visible';}
                            else {pq3.style.visibility = 'visible';}
                            }
                            
                            function addmorelang()
                            { 
                           
                            var pq2=document.getElementById("rowlang2");
                            var pq3 =document.getElementById("rowlang3");
                            if (pq2.style.visibility == 'hidden')
                             {pq2.style.visibility = 'visible';}
                            else {pq3.style.visibility = 'visible';}
                            }
                            
                            
                        function rangechecker(endDate,startDate) 
                        {
                        if (startDate >endDate){
                        return false;
                        }
                             return true;
                            }
                document.getElementById("submit2").addEventListener("click", function(event){
                    event.preventDefault()
                });
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
                              var just=document.getElementById('JUSTIFY').value;
                               var REFNAME1=document.getElementById('REF_NAME_1').value;
                               var REFNAME2=document.getElementById('REF_NAME_2').value;
                               var REFDESIG1=document.getElementById('REF_DESIG_1').value;
                                var REFDESIG2=document.getElementById('REF_DESIG_2').value;
                                 var REFORG1=document.getElementById('REF_ORG_1').value;
                             var REFORG2=document.getElementById('REF_ORG_2').value;
                               var REFADD1=document.getElementById('REF_ADD_1').value;
                               var REFADD2=document.getElementById('REF_ADD_2').value;
                              
                                  var LANG1=document.getElementById('LANG_1').value;
                               var LANG2=document.getElementById('LANG_2').value;
                             
                             var one= rangechecker(TRAIN2TO,TRAIN2FR);  var two= rangechecker(TRAIN1TO,TRAIN1FR);
                             var three= rangechecker(EX2TO,EX2FR);  var four= rangechecker(EX1TO,EX1FR);
                             var app_photo=document.getElementById('app_photo').value;
                         var datetrue= isDate(DOB);
                             var counter=0;
                      var elementid=[];
                    var emptyc=0;
                          var inputs = document.getElementById("panel4").getElementsByTagName('input');
                        for (var p = 0, element; element = inputs[p++];) 
                   { if(!(element.id==="REF_PHONE_1")&&!(element.id==="REF_PHONE_2")
                   &&!(element.id==="JUSTIFY")&&!(element.id==="LANG_3")&&!(element.id==="HOBBIES")
                   ){
                   counter++;
                    if ( element.value === "" )
                       {emptyc++; if(element.id){
                       
                       elementid.push(element.id);
                       }
                       }
                           }}
                            if (!namefr==""&&!namelt==""&&!FNAME==""&&!DOB==""&&!NIC==""&&!app_photo==""
                         &&!REFNAME1==""&&!REFNAME2==""&&!REFDESIG1==""&&!REFDESIG2==""&&!REFORG1==""&&!REFORG2==""&&!REFADD1==""
                         &&!LANG1==""&&!LANG2==""&&!REFADD2==""
                         &&(one==true&&two==true&&three==true&&four==true)){
                 
                        document.getElementById("form9").action = "inserter.jsp";
                        document.forms["form9"].submit();
                       // alert("RANGES ARE OK");
                            }
                         else 
                            {           
                                alert("You didn't enter Compulsory fields. Also check range.");
                                document.getElementById(elementid[0]).focus();
                             }
                            }//end of function formpost
                   
                function fathercheck(evt)
                {
                var charCode = (evt.which) ? evt.which : event.keyCode
                
                   if(charCode != 32)
                    {if (charCode > 31 && ((charCode < 65 || charCode > 90)&&(charCode < 97 || charCode > 122)))
                       { return false;}}
                       
                return true;
                }
                   function addcheck(evt)
                {
                var charCode = (evt.which) ? evt.which : event.keyCode
                
                   if(charCode != 58&&charCode != 59&&charCode != 32
                   &&charCode!=40&&charCode!=41&&charCode!=43&&charCode!=45&&charCode!=46&&charCode!=47)
                    {if (charCode > 31 && 
                    ((charCode < 48 || charCode > 57)&&(charCode < 65 || charCode > 90)&&(charCode < 97 || charCode > 122)))
                       { return false;}}
                       
                return true;
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
                               {  document.getElementById('PERM_ADD').value = ''; 
                               
                                document.getElementById('PERM_ADD').focus();
                               }               
                  }
                  //bach gpa
                     function bachgpa(currvalue) {
                   var patt = new RegExp("\d{1}[\.]\d{2}");
                    var x = document.getElementById("BACH_GPA");
                   var res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,1})(\d{0,2})/).slice(1)
                        .replace(/-*$/g, '');
                  return x.value;
                  //.join('.')
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
                   var patt = new RegExp("\d{1,2}[\.]\d{2}");
                    var x = document.getElementById("MAS_GPA");
                   var res = patt.test(x.value);
                   if(!res){
                   x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{1,2})(\d{0,2})/).slice(1)
                        .replace(/-*$/g, '');
                  return x.value;
                  //.join('.')
                   }
                }
                  
                           function numFunc() {
                    var patt = new RegExp("\d{1}");
                    var x = document.getElementById("WORK_PH");
                   var res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                          .match(/(\d{0,11})/).slice(1).join('-')
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
                   var patt = new RegExp("\d{11}");
                    var x = document.getElementById("REF_PHONE_1");
                   var res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,12})/).slice(1).join('-')
                        .replace(/-*$/g, '');
                   }
                }
                
                // function myFunc() {
                //  var patt = new RegExp("\d{5}[\-]\d{8}[\-]\d{1}");
                //   var x = document.getElementById("CNIC");
                //   var res = patt.test(x.value);
                //   if(!res){
                //    x.value = x.value
                //        .match(/\d*/g).join('')
                //        .match(/(\d{0,5})(\d{0,8})(\d{0,1})/).slice(1).join('-')
                //        .replace(/-*$/g, '');
                //   }
                   
                //}
                 function numFunc2() {
                   var patt = new RegExp("\d{11}");
                    var x = document.getElementById("CELL_PH");
                   var res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,11})/).slice(1).join('-')
                        .replace(/-*$/g, '');
                   }
                }
                function checkLength(el) {
                  if (el.value.length != 15) {
                    el.value='';
                    return false; 
                  }
                  return true;
                }
                
                function nickeyup(el)
                {
                                   
                  if ((el.keyCode == 8) || (el.keyCode == 9 )||( el.keyCode == 27 )|| (el.keyCode == 65 && el.ctrlKey === true) )
                                      { return ;}
                  if( event.keyCode < 48 || event.keyCode > 57)
                  {  el.value='';
                  return false;
                  }         
                
                 
                }

            function nickeypress(el)
            {
             var length = el.value.length; 
             if(length == 5 || length == 13)
               { el.value=el.value+'-';
              
               }
            }
            
            function gpaLen(el) {
              if (isNaN(el.value)) {
                el.value='';
                return false; 
              }
               if (el.value>100) {
                el.value='';
                return false; 
              }
              if(el.value.length===3||el.value.length===1)
              {if (el.value>4) {
                el.value='';
                return false; 
              }
              }
              return true;
            }
            function percLen(el) {
               if (isNaN(el.value)) {
                el.value='';
                return false; 
              }
              return true;
            }
            
            //mobile without '-'
            function checkmob(el) {
              if ((el.value.length < 11)||isNaN(el.value)||(el.value.length>11)||!el.value.startsWith('03')) {
                el.value='';
                return false; 
              }
              return true;
            }
            ////mobile with '-'
            function checkmobd(el) {
              if ((el.value.length < 12)||(el.value.length>12)||!el.value.startsWith('03')) {
                el.value='';
                return false; 
              }
              return true;
            }
            //land line number
            function checkl(el) {
              if ((el.value.length < 11)||isNaN(el.value)||el.value.length>11||!el.value.startsWith('0')) {
                el.value='';
                return false; 
              } else if ((el.value.length === 8)||el.value.length>8){
              return true;}
            }
            
            // home phone
                       function numFunc3(curr) {
               var patt = new RegExp("\d{11}");
                var x = document.getElementById("RES_PH");
               var res = patt.test(curr);
               if(!res){
                x.value = x.value
                    .match(/\d*/g).join('')
                    .match(/(\d{0,9})/).slice(1).join('-')
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
               if (sel==4||sel==3)
             {
            //alert(sel);
             document.getElementById('yno').style.display='block';}
              else if (sel==2) {document.getElementById('prevbt').style.display='none';}
             else  {document.getElementById('yno').style.display='none';}
                      sel--;
            
                      
                        document.getElementById("p"+sel).checked = true;     
                  }
                 function emailcheck(el)
                 {  var patt = new RegExp("[^@]+@[^@]+\.[a-zA-Z]{2,6}");
                var res = patt.test(el.value);
                 if (res===false){
                 document.getElementById("email").value = '';
                 return false;}
                 return true;
                 }
                  function clicker(){
            var p = 0, element;
             var sel=0;
            var marker=0;
            var mas_passyr=0;
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
 
             if (marker==3)
             {
             document.getElementById('yno').style.display='none';}
             else if (marker!=3) {document.getElementById('yno').style.display='block';}
             if (marker==1||marker==2||marker==3)
             {
             document.getElementById('prevbt').style.display='block';}
             else {document.getElementById('prevbt').style.display='none';}
            for ( p = 0; element = inputs[p++];) {
            //   // alert("there are empty text fields on  panel no. " +elements.value );
                if (!(element.id === "p1")&&!(element.id === "p2")&&!(element.id === "p3")&&!(element.id === "p4")
                &&!(element.id === "PQ_3")&&!(element.id === "PQ3_INS")&&!(element.id === "PQ3_STATUS")&&!(element.id === "PQ3_MAJOR")
                 &&!(element.id === "PQ_1")&&!(element.id === "PQ1_INS")&&!(element.id === "PQ1_STATUS")&&!(element.id === "PQ1_MAJOR")
                  &&!(element.id === "PQ_2")&&!(element.id === "PQ2_INS")&&!(element.id === "PQ2_STATUS")&&!(element.id === "PQ2_MAJOR")
                &&!(element.id === "PQ2_PASS_YR")&&!(element.id === "PQ1_PASS_YR")
                &&!(element.id === "PQ3_PASS_YR")&&!(element.id === "EX1_COMP")&&!(element.id === "EX1_JOBT")
                &&!(element.id === "EX1_RESP")&&!(element.id === "EX1_FR")&&!(element.id === "EX1_TO")
                &&!(element.id === "EX2_COMP")&&!(element.id === "EX2_JOBT")
                &&!(element.id === "EX2_RESP")&&!(element.id === "EX2_FR")&&!(element.id === "EX2_TO")
                &&!(element.id === "TRAIN_1")&&!(element.id === "TRAIN1_FR")
                &&!(element.id === "TRAIN1_TO")&&!(element.id === "TRAIN1_ORG")&&!(element.id === "mid_name")
                  &&!(element.id === "TRAIN_2")&&!(element.id === "TRAIN2_FR")&&!(element.id === "WORK_PH")
                &&!(element.id === "TRAIN2_TO")&&!(element.id === "TRAIN2_ORG")
                 &&!(element.id==="INTER_OTHER")&&!(element.id==="RES_PH")
                 
                 &&!(element.id==="MAS_CITY_ID")&&!(element.id==="MAS_PASS_YR")
                 &&!(element.id==="masters")&&!(element.id==="MAS_OTHER")&&!(element.id==="MAS_MAJOR")&&!(element.id==="MAS_UNIV")&&!(element.id==="MAS_GPA")
                 &&!(element.id==="BACH_OTHER")&&!(element.id==="MAT_OTHER")
                 &&!(element.id === "LANG_1")&&!(element.id === "LANG_2")&&!(element.id==="LANG_3")
                )
                { 
                 counter++;
            //     if (element.id=="MAS_PASS_YR")
            //       {mas_passyr=element.value;
            //       }
                if ( element.value === "" )
                   {emptyc++;
                   if(element.id){
                   
                   elementid.push(element.id);
                   }
                   }
                   }
                 }
                  var input = document.getElementById(panel).getElementsByTagName('select');
                 for (var p1 = 0, elem; elem = input[p1++];)
                 {
               if (!(elem.id==="MAS_PASS_YR") ){
               if((elem.value === 'Year_of_Passing'))
                 {
                 emptyc++;
                 if(elem.id){
                 elementid.push(elem.id);
                 }//end of if element has id
                 }//end of year of passing test
                 }//end of ! masters block
                // }
                if (!(elem.id==="masters")&&!(elem.id==="MAS_OTHER"))
                {
                if ((elem.id==="BACHELORS")&&(elem.value==='Select'))
                {
               var val=document.getElementById("BACH_OTHER");
               if (val.value==="")
                {
                 emptyc++;
                 if(val.id){
                 elementid.push(val.id);
                 }
                 }
                }
                if ((elem.id==="INTER")&&(elem.value==='Select'))
                {
                 var val2=document.getElementById("INTER_OTHER");
               if (val2.value===""){
                 emptyc++;
                 if(val2.id){
                 elementid.push(val2.id);
                 }}
                }
                if ((elem.id==="MATRIC")&&(elem.value==='Select'))
                {
                 var val3=document.getElementById("MAT_OTHER");
               if (val3.value==="")
               {  emptyc++;
                 if(val3.id){
                 elementid.push(val3.id);
                 }}
                }
                }
                 }//end of for loop
              //  elementarray=elementid.split("\\ ,");
                 // alert("total elements  "+counter+"   total empty  "+ emptyc );
                  
                 if (!(emptyc===0))
                 {
                 alert("Haven't Filled all the fields   ");
                  document.getElementById(elementid[0]).focus();
                 return false;
                 }
 //alert("ok prompt  "+mas_passyr);
          sel++;
            document.getElementById("p"+sel).checked = true;    
       
      }
               
 
		 </script>
                 
                 <script>
                 var timer="";
                  function nickeyup(el)
                    {
                       
                       if ((el.keyCode == 8) || (el.keyCode == 9 )||( el.keyCode == 27 )|| (el.keyCode == 65 && el.ctrlKey === true) )
                                          { return ;}
                      if( event.keyCode < 48 || event.keyCode > 57)
                      {  el.value='';
                      return false;
                      }         
//                        var patt = new RegExp("(^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$)");
//                          var res = patt.test(el.value);
//                      clearTimeout(timer);
//                     timer=setTimeout(function validate(){
//                     if (res){
//                        return true; 
//                      }
//                     else{el.value = ''; return false;}
//                       },100);
                        if((el.value.length > 5) && (el.value.length < 13)) {
		        newVal += el.value.substr(0, 5) + '-';
		        el.value = el.value.substr(5);
		     }
		     if (el.value.length > 12) {
		        newVal += el.value.substr(0, 5) + '-';
		        newVal += el.value.substr(5, 7) + '-';
		        el.value = el.value.substr(12);
		      }
		      newVal += el.value;
		      el.value = newVal.substring(0, 15);

                    }
                 
                 </script>
                 
            <style>
            
    .stages {
	font-size: 0;
	text-align: justify;
        width:85.0%;
    margin-left:32px;
}

.stages:after {
	content: '';
	display: inline-block;
	font-size: 0;
	text-align: justify;
	width: 100%;
}
 select:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  padding: 3px 0px 3px 3px;
  /*margin: 5px 1px 3px 40px;*/
  border: 1px solid rgba(81, 203, 238, 1);
}
 

.dekho {
	display: none;
}
.table9 {  font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;margin: auto 60px auto 60px; table-layout: fixed; border-collapse: collapse;width:90.0%;overflow-x:auto;}
.table9 td {overflow-x:auto; }

.header4{margin-left:45px;}
.table4 {table-layout: fixed; border-collapse: collapse;width:100.0%;}
.table4 td {overflow-x:hidden; overflow-y: hidden;}
.table3 {table-layout: fixed; border-collapse: collapse;width:100.0%;}
.table3 td {width: 100%; }
.table {margin: auto 45px auto 45px; border-collapse: collapse;table-layout: fixed; width:94.0%;overflow-x:auto;}
.table td {border:0;overflow-x:auto;}
.table5 {margin: auto 45px auto 45px;border-collapse: collapse; table-layout: fixed; width:90.0%;overflow-x:auto;}
.table5 td {border:0;overflow-x:auto; }
.table2 {margin: auto 45px auto 45px;border-collapse: collapse; table-layout: fixed; height:auto;  overflow-x:auto; }
.table2 td {border:0;width: 200px; overflow-x:auto;}

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
      pointer-events: none;
	vertical-align: top;
	width: 118px;
	z-index: 1;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	
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
.fixtab{table-layout: fixed;}
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
	
    /*	min-width:100px;*/
	padding: 1em;
       max-width: 68%;
       margin: 4em;
       margin-left:15%;
}


#form9{
      padding: 0;
  overflow-y: hidden ;
  overflow-x: scroll;
  min-width:65%;
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
   .declarlbl {background-color: #2385c4;
	border: 0;
	color: #ffffff;
	
	font-weight: 700;
         
          margin-left: 2.0px;
           margin-right: 14.0px;
	width:100px; 
	padding: .1em;  }
input[type='button']
 {background-color: #2385c4;
	border: 0;
	color: #ffffff;
	cursor: pointer;
	font-weight: 700;
          margin-left: 20.0px;
	
        min-width:37%;
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

.panels div {
	border-top: solid 1px #c0c0c0;
	margin: 1em 0 0;
	padding: 1em 0 0;
        min-width:20px;
    
}

.panels div {
	display: none;
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
        margin-left: 62.0px;
	transition: 0.001s;
	width: 0;
     text-align: center;
}

#p2:checked ~ .progress span {
	width: calc(100% / 5 * 1.5);
}

#p3:checked ~ .progress span {
	width: calc(100% / 5 * 2.7);
}

#p4:checked ~ .progress span {
	width: calc(100% / 5 * 3.8);
}

#p5:checked ~ .progress span {
	width: calc(100% / 5 * 5);
}


#p1:checked ~ .panels #panel1,
#p2:checked ~ .panels #panel2,
#p3:checked ~ .panels #panel3,
#p4:checked ~ .panels #panel4,
#p5:checked ~ .panels #panel5,
#p6:checked ~ .panels #panel6 {
	display: block;      
   -webkit-justify-content: center; justify-content: center; padding: 10px 0 5px 0; 
}


/* Custom code for the demo */



textarea {
    min-width: 10%;
    max-width: 40%;
  resize: none;
    border : .1px SOLID blue;
    height:125px;
    width: 75%;
    overflow: auto;
}

html,
input,
select,
textarea {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
}

.your-class input{
  float:left;
}

    </style>
            <!--    background-color: #0cc39f;-->
   
        </head>
        <body onload="hideprev()" OnKeyPress="return disableEnterKey(event)" >
               <form name="form9" id="form9" method="POST" enctype="multipart/form-data">
                <div class="form">
                 <div style="text-align: justify;">  <table > <tr style="float:left;"><td   style="float:left;"><div style="text-align: left; ">
                      <a href="http://www.efuinsurance.com/">  <img alt="Efu Insurance LTD"  height="75" width="64" src="resources/images/logo_efu.png" title="Go To Home."/></a>
                    </div></td><td   style="float:left;"></td>
                   <td > <div style="margin-left:188%;  ">
                       <a href="http://www.efuinsurance.com/">   <img alt="Efu Insurance LTD" height="35" width="239" src="resources/images/efuTxtLogo.gif" title="Go To Home."/></a>
                    </div></td></tr></table></div>
                    <center>
                        <h2>
                            Application Form
                        </h2>
                       
                            <h3>
                                <!--Management Trainee Program &ndash; 2017--> <!--changed from 2017 on the 22 of feb 2019-->
                                Management Trainee Program &ndash; 2019
                                
                            </h3>
                      
                       <center>  <b><span id="date_time"></span></b> <p>&nbsp;</p>
            <script type="text/javascript">window.onload = date_time('date_time');</script>
                         </center> <table class="table9"  style="   font-size:14.0px ;text-align:justify;">
                         <tr><td></td></tr> <tr><td></td></tr><tr><td>
                          <label class="declarlbl" style=" overflow-x:auto; max-width:10px;">
                                    Instructions :&nbsp; </label>
                                 
                   <p style=" min-width:5%;overflow-x:auto; ">&nbsp;&nbsp;.&nbsp;To apply please fill in necessary details and upload your Passport-Size photo.</p>
                    <p style=" min-width:5%;overflow-x:auto; ">&nbsp;&nbsp;.&nbsp;Kindly fill this form to the best of your Knowledge. </p>
                    <!--<p style="min-width:5%;text-align:justify;overflow-x:auto; ">&nbsp;&nbsp;.&nbsp;Your age should not exceed 27 years till the date of this application. </p>-->
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">&nbsp;&nbsp;.&nbsp;Name photo file before uploading.  </p>
                  <!--<p style="min-width:5%;text-align:justify;overflow-x:auto; ">    . Your photo file should be either png or jpeg.  </p>
                  <p style="min-width:5%;text-align:justify;overflow-x:auto; ">  . Your photo file size can be up to 800 KB (KiloBytes).</p>-->
                           
                                    </td></tr>
                                     <tr><td><label id="msgdisp"></label></td></tr> <tr><td></td></tr>
                                     <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                             <tr><td></td></tr> <tr><td></td></tr>    <tr><td></td></tr> <tr><td></td></tr>  
                             <tr><td></td></tr> <tr><td></td></tr>  </table>
                        
                        <!--<p style=" font-size:11.0px ;">
                           (Accepting from Karachi only)
                        </p>-->
                    </center>
                         
                    <input id="p1" value="1" type="radio" class="dekho" name="stage" checked="checked"/>
                     
                    <input id="p2" value="2" type="radio" class="dekho" name="stage"/>
                     
                    <input id="p3" value="3" type="radio" class="dekho" name="stage"/>
                     
                    <input id="p4" value="4" type="radio" class="dekho" name="stage"/>
                    <!--<input id="p5" value="5" type="radio" class="dekho" name="stage"/>-->
                    <div class="stages">
                        <label id="lp1" for="p1"> Basic Info </label>
                         
                        <label id="lp2"  for="p2"> Education </label>
                         
                        <label id="lp3" for="p3">Achievements</label>
                         
                        <label id="lp4" for="p4"> Misc. </label><!--<label for="p5">5</label>-->
                    </div>
                     <span class="progress">
                    <span></span></span>

                    <div class="panels">
                        <div id="panel1" >
                            <h4 style="margin-left: 77px;">
                                Personal Information
                            </h4>
                            <h5 style="margin-left:80px;">.&nbsp;&nbsp; All&nbsp;<b style="color: Red; width:2%;">*</b>&nbsp;fields are mandatory .</h5>
                           
                                <table style="min-width:2%; max-width:86.5%;" ><tr ><td colspan="2">   <b style="margin-left: 74px;color: Red;">*</b>
                            
                            <label style=" font-size: 10.0pt;" for="APP_NAME">
                                Applicant Name :&nbsp;
                            </label></td></tr>
                             
                          <tr style="float:left; min-width: 10.0px; max-width:100%;" ><td style="min-width:2%;max-width:36%;">
         <input  type="text" id="first_name" name="first_name" style="max-width:100%" 
                 onfocus="hideprev()"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" placeholder="First Name" maxlength="15"/></td>
                                 <td style="min-width:2%;max-width:35%;">
          <input  type="text" id="mid_name" name="mid_name" style="max-width:100%"
                                 onfocus="hideprev()"  onkeyup="return z(this)"    onkeypress="return wordcheck(event)" placeholder="Middle Name" maxlength="15"/></td>
                           
                           <td style="min-width:2%;max-width:28%;">
          <input  type="text" id="last_name" name="last_name" style="max-width:100%"
                                onfocus="hideprev()"  onkeyup="return z(this)"    onkeypress="return wordcheck(event)" placeholder="Last Name" maxlength="15"/>
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
                             
                            <input type="text"  id="APP_F_NAME" name="APP_F_NAME"  onkeypress="return fathercheck(event)"
                              maxlength="40"   onfocus="hideprev()"   onkeyup="return z(this)"    placeholder="Father's Name"/>
                             
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="CNIC">
                                CNIC :&nbsp;
                            </label>
            
                            <!--  onkeyup="this.value = fixDatePattern(this.value)"  -->
                            <input  type="text" maxlength="15" id="CNIC" name="CNIC" onfocus="hideprev()"  placeholder="xxxxx-xxxxxxxx"  onchange="nickeyup(this)"/>
                           <table><tr><td></td></tr></table> 
                            
                            
                            <label  style=" padding: :4.0pt ; font-size: 10.5pt;">
                            <b style="margin-left: 77px;color: Red;">*</b> &nbsp;   Gender :
                            </label>
                           <!--<table><tr><td></td></tr></table>-->
                            <table >
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td width="7">&nbsp;</td>
                                    <td  class="your-class" style="height:10px;width:10px;" width="10">
                                     <b style="margin-left: 87.0px;font-size: 10.0pt;" >
                                            M 
                                        </b>   <input  id="male" value="M" checked="checked" type="radio" style="height:55%;width:40%;"    onfocus="hideprev()"  name="GENDER"/>
                                    </td>
                                    <td class="your-class" style="height:10px;width:10px;" width="10">
                                       <b style="margin-left: 87.0px;font-size: 10.0pt;" >
                                            F 
                                        </b>  <input type="radio" id="female" value="F"  name="GENDER"   onfocus="hideprev()"  style="height:55%;width:40%;"/>
                                    </td>
                                </tr>
                            </table>
                            <table><tr><td>&nbsp;</td></tr></table>
                                  
                            <label style=" font-size: 10.0pt;" for="dob">
                                <b style="margin-left: 77px;color: Red;">*</b>&nbsp;Date Of Birth :
                            </label>
             
                            <input id="DOB" style="max-width:305px;"  onfocus="hideprev()"   placeholder="29-MAR-17"  maxlength="9" readonly='readonly' name="DOB"/>
                         
                           
                            <b style="margin-left: 77px;color: Red;">*</b>&nbsp;
                            <label style=" font-size: 10.0pt;" for="app_photo">Applicant Picture :</label>
                             
                            <input type="file" accept=".jpg,.jpeg,.png"  onfocus="hideprev()" title="Choose Picture" name="app_photo" id="app_photo"/>
                            <table>
                                <tr><td>&nbsp;</td> <td>&nbsp;</td></tr> </table>
                            <i style=" direction: rtl;overflow-x:hidden;min-width:2%; max-width: 95%; text-overflow:clip;   margin-left:32%; color: #b3c5e3;" >-----------Contact Details-----------------</i>   
                         
                            <table>
                                <tr>
                                    <td><b style="margin-left: 77px;color: Red;">*</b>
                                        <label style=" font-size: 10.0pt;">
                                           &nbsp;Address :</label>
                                        
                                    </td>
                                </tr></table>
                                 <input id="RES_ADD" name="RES_ADD" type="text"  maxlength="60"
                              onkeyup="return z(this)"   onkeypress="return addcheck(event)"    onfocus="hideprev()"    placeholder="Current Home Address"/>
                            
                              <table>  <tr>
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
                                        <input class="panel1" id="same"  type="radio"  style="height:30%;width:30%;"   onfocus="hideprev()" 
                                           value="same"  onClick="toggle(this)"  name="addrad"/>
                                   </td><td style="height:50px;width:90px;">
                                        <input class="panel1" onClick="toggle(this)" checked="checked" id="differ" value="differ" style="height:30%;width:30%;" type="radio"   onfocus="hideprev()"  name="addrad"/>
                                    </td>
                                </tr>
                            </table>
                             
                           <input id="PERM_ADD"   onfocus="hideprev()"  name="PERM_ADD" type="text" maxlength="60"
                      onkeypress="return addcheck(event)"    onkeyup="return z(this)"      placeholder="Permanent Home Address"/>
                             
                            <label class="BASLABEL">
                                Applicant City :&nbsp;
                            </label>
    
                            <table>
                                <tr>
                                    <td>
                                        <select id="CITY_ID"   onfocus="hideprev()"  name="CITY_ID">
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
                                Home Phone :
                            </label></td colspan="2"></tr>
                             
                          <tr><td colspan="2" style="width:20%">
         <input type="text" style="max-width: 33%;min-width:5%;"    onfocus="hideprev()" readonly="readonly" value="+92"/> </td>
         <td  style="width:80%">
         <input style="margin-left:45px;max-width:45%; min-width:5%; float:left;" id="RES_PH" name="RES_PH"  onfocus="hideprev()" 
         onblur="return checkl(this)"  type="text" maxlength="11" placeholder=" 02134334444"/>
                          </td>  </tr> </table>
                           
                          <table><tr><td colspan="2">  <label class="BASLABEL">Work Phone :</label></td></tr>
                             
                          <tr><td style="width:20%">
         <input type="text" style="max-width: 33%;min-width:5%;" readonly="readonly"   onfocus="hideprev()"  value="+92"/> </td>
         <td style="width:80%">
          <input id="WORK_PH" style="margin-left:45px;max-width:45%;  min-width:0.3%;" onblur="return checkl(this)" 
          onkeypress = "numFunc2()"    name="WORK_PH" type="text" maxlength="11" onfocus="hideprev()"  placeholder=" 03013334444"/>
                          </td>  </tr> </table>
                           
                             
                             <table><tr><td colspan="2">   <label class="BASLABEL" for="mob"> <b style="color: Red; width:2%; ">*</b> &nbsp;Mobile :</label></td></tr>
                             
                          <tr><td colspan="2" style="width:20%">
         <input type="text" style="max-width: 33%;min-width:5%;"   onfocus="hideprev()"  readonly="readonly" value="+92"/> </td>
         <td style="width:80%">
          <input  style="margin-left:45px;max-width:45%; min-width:5%;"  id="CELL_PH"  onfocus="hideprev()" 
          onblur="return checkmob(this)" onkeypress = "numFunc2()" placeholder=" 03013334444" name="CELL_PH" type="text"  maxlength="11"/>
                          </td>  </tr> </table> 
                             
                          
                             
                            <b style="margin-left: 77px;color: Red;">*</b>
                             
                            <label style=" font-size: 10.0pt;" for="email">
                                Email :&nbsp;
                            </label>
                             
                            <input type="email"   onfocus="hideprev()"  onblur="  emailcheck(this)" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" id="email" name="email"  maxlength="40" placeholder="Ahsan@email.com"/>
                        
                     </div> <!-- end of panel 1-->
                        <div id="panel2"  >
                            <h4 class="header4">
                                Education
                            </h4>
                            <!--<h5 style="margin-left:80px;">.&nbsp;&nbsp; All fields mandatory except 'other qualification' option for alternate title of each level of education.</h5>-->
                            <!--<h5 style="margin-left:80px;">.&nbsp;&nbsp; CGPA for Master's and Bachelor's should correspond to the '4.00' Scale.</h5>-->
                             
                              <center>
                                <h5>
                                <!--<b style="color: Red;">*</b>-->
                                &nbsp;&nbsp;Post Graduate / Master's Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;"  >
                                        <tr>
                                            <td>
                                                <select class="dir" id="masters" name="masters" onfocus="showprev()">
                                                    <option>Select</option>
                             <option>MCS</option>    <option>M.B.A</option><option>M.Com</option><option>M.Sc</option><option>M.A</option>
                               <!--<option>Exec. Master of Business Administration (MBA)</option>                    
                                      
	<option>Master Of Science</option>
	<option >Master of Education (M.Ed)</option>
	<option >Master of Professional Accounting</option>
	<option >Master of Science in Business Administration (M.S.B.A.)</option>
	<option >Master of Science in Systems Engineering </option>
	<option >Master of Advertising</option>
	<option >Master of Economics and Finance </option>
	<option >Master of Human Resource Management</option>
	<option >Master of International Relations</option>
	<option >Master of Mass Communication</option>
	<option >Master of Public Administration</option>
	<option >Master of Arts (MA)</option>
	<option >Master of Business Administration (MBA)</option>
	<option >Master of CS and IT (MCIT)</option>
	<option >Master of Commerce (M.Com)</option>
	<option >Master of Law (LLM)</option>
	<option >Master of Philosophy (M.Phil/ Ph. M)</option>
	<option >Master of Science (MSc.)</option>
          <option>Master of Public Administration</option>                                         
                                                   
                                                    <option>
                                                        Master of Arts
                                                    </option>
                                                   
                                                    <option>
                                                        Other Qualification (Please Specify in Other)
                                                    </option>-->
                                                </select>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                            <!--change line to maxlength="30"-->
                                                <input  maxlength="30"    onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  type="text" id="MAS_OTHER" name="MAS_OTHER" placeholder=" Other Qualification " />
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
                                             onblur="return gpaLen(this)" type="text" maxlength="4"  placeholder="Masters CGPA or %"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="MAS_PASS_YR" name="MAS_PASS_YR" width="150px">
                                                    <option>Year_of_Passing</option>
                                                  
                                                    <option>
                                                Ongoing
                                            </option>
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
                                <h5><b style="color: Red;">*</b>&nbsp;&nbsp; Graduate / Bachelor's Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;" >
                                        <tr>
                                            <td>
                                                <select class="dir edu" id="BACHELORS"    name="BACHELORS" onfocus="showprev()">
                                                  <option>Select</option>
                                                    
             <option>BSCS</option><option>B.Sc.</option><option>B.E</option><option>BBA</option><option>B.Com</option><option>B.A</option>
                                                </select>       <!--<option >Assoc. of Chartered Certified Accountants (ACCA)</option>
                                                   <option >Assoc. of Cost and Man. Accountants (ACMA) </option>
                                                    
                                                    <option>
                                                        Bachelor Of Business Administration (BBA)
                                                    </option>
                                                    <option>
                                                        Economics (Bachelors of Science)
                                                    </option>
                                                    <option>
                                                        Finance (Bachelors of Science)
                                                    </option>
                                                    
                                                    <option>
                                                        Computer Science (Bachelor of Science)
                                                    </option>
                                                    <option>
                                                        Information Technology (Bachelor of Science)
                                                    </option>
                                                    <option>
                                                        Internatinal Business 
                                                    </option>
                                                   
                                                   
	<option>Bachelors Public Administration</option>
        
	<option>Bachelor of Medicine, Bachelor of Surgery (MBBS)</option>
	<option >Bachelor of Science - Computer Engineering</option>
	<option >Bachelor of Science in Business Administration</option>
	<option >Bachelor of Technology - Electronics</option>
     
	<option > Bachelors in Cost And Management Accounting  </option>
                             
                                                    <option>
                                                        Corporate Social Responsibility-CSR (BS or BBA)
                                                    </option>
                                                    <option>
                                                      Bachelors  leaderShip/Strategy 
                                                    </option>
                                                    
                                                    <option>
                                                        Bachelor in Arts - B.A
                                                    </option>
                                                    <option>
                                                        Bachelor of Science Mathematics
                                                    </option>
                                                   
                                                    <option>
                                                        BA-LL.B Law and Policy
                                                    </option>
                                                    <option>
                                                        Psychology (Bachelor)
                                                    </option>
                                                    <option>
                                                        B.Com.
                                                    </option>
                                                    <option>
                                                        Bachelor Of Science
                                                    </option>
                                                    
                                                    <option>
                                                        Bachelor of Engineering - BE
                                                    </option>
                                                    <option>
                                                         Other Qualification (Please Secify in Other)
                                                    </option>-->
                                             
                                            </td>
                                            <td style=" grid-row-align: end;">
                                            <!--change line to maxlength="30"-->
                                                <input type="text" id="BACH_OTHER" onkeypress="return wordcheck(event)"
                                                 maxlength="30"     class="edu"      name="BACH_OTHER" placeholder=" Other Qualification "/>
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
                                      onblur="return gpaLen(this)"  onkeyup="this.value=bachgpa(this.value)"      placeholder="Bachelor's CGPA or %"/>
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="BACH_PASS_YR" name="BACH_PASS_YR" width="150px">
                                                     <option>Year_of_Passing</option>
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
                                 <h5><b style="color: Red;">*</b>&nbsp;&nbsp;Intermediate  Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;">
                                        <tr>
                                            <td>
                                                <select class="dir edu" id="INTER" name="INTER">
                                                  <option>Select</option>
                                                   <option>F.Sc</option>
                                              <option>F.A.</option>
                                            <option>I.Com</option>
                                                  <option>H.S.C</option>
                                                <option>A Level</option>   </select>
                                                    <!--<option>
                                                      Advanced Level (A Level)
                                                    </option>
                                                    <option>
                                                        Higher Secondary Certificate Board of Intermediate
                                                    </option>
                                                    
                                                    <option>
                                                        American HighSchool
                                                    </option>
                                                    <option>
                                                        O&amp;A-Level Combined
                                                    </option>
                                                    <option>
                                                       HSC - Agha Khan Board High School
                                                    </option>-->
                                                 
                                                   
                                              
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                <input type="text" id="INTER_OTHER" onkeypress="return wordcheck(event)"
                                              maxlength="30"        class="edu"      name="INTER_OTHER" placeholder=" Other Qualification "/>
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
                                            <td class="your-class"> 
                 <input  id="INTER_GPA" name="INTER_GPA" onkeyup="this.value=gpaFunc(this.value)" style="width:75%;"
                                      onblur="return percLen(this)" type="text" maxlength="5" placeholder="Percentage %"/>
                                          <b>%</b> </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="INTER_PASS_YR" name="INTER_PASS_YR"
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
                                <h5><b style="color: Red;">*</b>&nbsp;&nbsp;Matric Education</h5>
                                    <table class="table" border="1" style="border:4.0px ;">
                                        <tr>
                                            <td>
                                                <select class="dir edu" id="MATRIC" name="MATRIC">
                                                    <option>Select</option>
                                                    <option>S.S.C</option>
                                                      <option>O Level</option></select>
                                                    <!--<option>  
                                                      GCSE O Level (Detail all subjects in other)
                                                    </option>
                                                    <option>
                                                        SSC Board of Secondary School
                                                    </option>
                                                    
                                                    <option>
                                                        American HighSchool (Detail in other)
                                                    </option>
                                                    <option>
                                                        O&amp;A-Level Combined (Detail in other)
                                                    </option>
                                                    <option>
                                                    SSC - Agha Khan Board Secondary School Certificate
                                                    </option>
                                                    <option>  Other Qualification- Detail in Other </option>-->
                                              
                                            </td>
                                            <td style=" grid-row-align: end;">
                                                 <input type="text" id="MAT_OTHER" onkeypress="return wordcheck(event)"
                                                  class="edu"     maxlength="30"  placeholder=" Other Qualification "   name="MAT_OTHER"/>
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td>
                                                <input type="text" id="MAT_MAJOR" onkeypress="return wordcheck(event)"
                                                maxlength="35"         name="MAT_MAJOR" placeholder=" Major"/>
                                            </td>
                                            <td style=" grid-row-align: end;"> <input type="text" id="MAT_SCHOOL" onkeypress="return wordcheck(event)"
                                                 maxlength="35"   placeholder="Institute"      name="MAT_SCHOOL" />
                                              
                                            </td>
                                        </tr>
                                         
                                        <tr>
                                            <td class="your-class">
                                                <input     id="MAT_GPA" name="MAT_GPA"  type="text" maxlength="5" style="width:75%;"
                                             onblur="return percLen(this)"    onkeyup="this.value=matgpa(this.value)"    placeholder="Percentage %"/>
                                            <b>%</b>  </td>
                                            <td style=" grid-row-align: end;">
                                                <select class="dir" id="MAT_PASS_YR" name="MAT_PASS_YR" width="150px">
                                                    <option>Year_of_Passing</option>
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
                        <div id="panel3" >
                            <h4 class="header4">
                                Academic Achievements/Projects
                            </h4>
                             <!--<h5 style="margin-left:80px;">.&nbsp;&nbsp; All fields optional on this stage.</h5>-->
                           
                            <textarea   class="header4"  style="max-device-width: 25.0%; "  rows="4" cols="40" maxlength="250"
                              onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="249"
                            id="PROJECTS" name="PROJECTS" onfocus="showprev()" placeholder="Add your Projects here(Max Three)"></textarea>
                        
            <textarea  style="max-device-width: 25.0%;margin-right:35px;margin-left:20px;" rows="4" cols="40"
              onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="299"
            id="ACHEIVEMENTS" name="ACHEIVEMENTS" onfocus="showprev()" placeholder="Add your Achievements here (Max Three)"></textarea>
                             <table><tr><td>&nbsp;</td></tr></table>
                            <h4 class="header4">
                                Professional Qualifications
                            </h4>
                            <a class="addpq" style="  margin-left: 638px; cursor: pointer;" onclick="addmore()">&nbsp;Add More . . . &nbsp;</a>
                                              
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
                                        <select class="dir" id="PQ1_STATUS" name="PQ1_STATUS"  style="max-width:82%;"  >
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
                                        <select class="dir" id="PQ1_PASS_YR" name="PQ1_PASS_YR" style="max-width:82%;" >
                                             <option>yet to pass</option>
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
                                            
                                        </select>
                                    </td>
                                </tr>
                              
                                <tr id="pq2">
                                    <td>
                                        <input type="text" id="PQ_2" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Qualification" name="PQ_2"/>
                                    </td>
                                    <td>
                                        <input type="text" id="PQ2_INS" onkeypress="return wordcheck(event)"
                                          maxlength="35"       placeholder="Institute/University" name="PQ2_INS"/>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <select class="dir" id="PQ2_STATUS" name="PQ2_STATUS" style="max-width:82%;" >
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
                                        <select class="dir" id="PQ2_PASS_YR" name="PQ2_PASS_YR"  style="max-width:82%;" >
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
                                 
                                <tr id="pq3">
                                    <td>
                                        <input type="text" id="PQ_3" onkeypress="return wordcheck(event)"
                                           maxlength="35"      placeholder="Qualification" name="PQ_3"/>
                                    </td>
                                    <td>
                                        <input type="text" id="PQ3_INS" onkeypress="return wordcheck(event)"
                                            maxlength="35"     placeholder="Institute/University" name="PQ3_INS"/>
                                    </td>
                                    <td style=" grid-row-align: end;">
                                        <select class="dir" id="PQ3_STATUS" name="PQ3_STATUS" style="max-width:82%;" >
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
                                        <select class="dir" id="PQ3_PASS_YR" name="PQ3_PASS_YR"  style="max-width:82%;" >
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
                             <table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
                            <h4 class="header4">
                                Professional Experiences
                            </h4>
                            <a id="addex" style="  margin-left: 638px; cursor: pointer;" onclick="addmorexp()">&nbsp;Add More . . . &nbsp;</a>
                            <table class="table2"  border="1" style="border:4.0px ;">
                                <tr>
                                    <td>
                                        <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="35"  id="EX1_COMP" placeholder="Company Name" name="EX1_COMP"/>
                                    </td>
                                    <td>
                                        <input type="text"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" maxlength="20"  id="EX1_JOBT" placeholder="Job Title" name="EX1_JOBT"/>
                                    </td>
                                    <td>
                                        <input type="text" id="EX1_RESP" placeholder="Responsibilities"
                                          onkeyup="return z(this)"  onkeypress="return wordcheck(event)"     maxlength="35"    name="EX1_RESP"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly="readonly" placeholder="29-MAR-17"
                                               id="EX1_FR" name="EX1_FR"/>
                                    </td>
                                    <td>
                                        <input  maxlength="9" readonly='readonly' placeholder="29-MAR-17"
                                                id="EX1_TO" name="EX1_TO"/>
                                    </td>
                                </tr>
                                 
                                <tr id="exp2">
                                    <td>
                                        <input type="text" maxlength="35"  id="EX2_COMP"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  placeholder="Company Name" name="EX2_COMP"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="20"  id="EX2_JOBT"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" placeholder="Job Title" name="EX2_JOBT"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="100"  id="EX2_RESP"  onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  placeholder="Responsibilities"
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
                             <table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
                           
                            
                            
                            <h4 class="header4">
                                Trainings
                            </h4>
                             <a id="addtr" style="  margin-left: 638px; cursor: pointer;" onclick="addmoretr()">&nbsp;Add More . . . &nbsp;</a>
                            <table class="table2"  border="1" style="border:4.0px ;">
                                <tr>
                                    <td>
                                        <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" id="TRAIN_1" placeholder="Name of Training" name="TRAIN_1"/>
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
                                        <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" id="TRAIN1_ORG" placeholder="Providing Organization"
                                               name="TRAIN1_ORG"/>
                                    </td>
                                   
                                </tr>
                                 
                                <tr id="tr2">
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
                        <div id="panel4" >
                            <h3 class="header4">
                                Miscellaneous Details
                            </h3>
                             <!--<h5 style="margin-left:80px;">.&nbsp;&nbsp; All categories mandatory except 'Hobbies' and 'Justify' .</h5>-->
                             <!--<h5 style="margin-left:80px;">&nbsp;&nbsp; Mandatory Fields :</h5>
                            <h5 style="margin-left:80px;">.&nbsp;&nbsp; Atleast two references</h5>
                            <h5 style="margin-left:80px;">.&nbsp;&nbsp;Atleast two languages</h5>-->
                            <h5 style="margin-left:80px;">&nbsp;&nbsp;Office phone numbers are optional</h5>
                            <h4 class="header4">
                                References
                            </h4>
                             
                            
                            <table class="table5" border="1"  style="border:4.0px ;">
                                <tr>
                                    <td style="width:18%;">
                                        <b style="color: Red; width:2%; float:left;">*</b>&nbsp;&nbsp;<input type="text" maxlength="35"  id="REF_NAME_1" placeholder="Referring Individual"
                                         style="width:80%;  float:right;"    onfocus="showprev()"      onkeyup="return z(this)"  onkeypress="return wordcheck(event)" name="REF_NAME_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" id="REF_DESIG_1" placeholder="Designation"
                                             name="REF_DESIG_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" id="REF_ORG_1" placeholder="Organization" name="REF_ORG_1"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ADD_1"
                       onkeypress="return addcheck(event)"   placeholder="Address" name="REF_ADD_1"/>
                                    </td>
                                    <td>
                                        <input id="REF_PHONE_1" placeholder=" Office Phone Number"  
                                onblur="return checkl(this)"  type="text" maxlength="11"   name="REF_PHONE_1"/>
                                    </td>
                                    <td>
                                        <input type="tel" id="REF_MOBILE_1" placeholder="Mobile Number" maxlength="12"
                                       onkeypress = "refmob1(this.value)"    onblur="return checkmobd(this)"     name="REF_MOBILE_1"/>
                                    </td>
                                </tr>
                                 
                                <tr>
                                    <td style="width:18%;">
                                        <b style="color: Red; width:2%; float:left;">*</b>&nbsp;&nbsp;<input style="width:80%;  float:right;"  type="text" maxlength="35"  id="REF_NAME_2" placeholder="Referring Individual"
                                               onkeyup="return z(this)"  onkeypress="return wordcheck(event)" name="REF_NAME_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_DESIG_2" placeholder="Designation"
                                           onkeyup="return z(this)"  onkeypress="return wordcheck(event)"      name="REF_DESIG_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"   onkeyup="return z(this)"  onkeypress="return wordcheck(event)" id="REF_ORG_2" placeholder="Organization" name="REF_ORG_2"/>
                                    </td>
                                    <td>
                                        <input type="text" maxlength="35"  id="REF_ADD_2"
                                     onkeypress="return addcheck(event)"   placeholder="Address" name="REF_ADD_2"/>
                                    </td>
                                    <td>
                                        <input  id="REF_PHONE_2"   onblur="return checkl(this)"  type="text" maxlength="11" placeholder=" 02134334444"   name="REF_PHONE_2"/>
                                    </td>
                                    <td>
                                        <input type="tel" id="REF_MOBILE_2" placeholder="Mobile Number" maxlength="12"
                                        onblur="return checkmobd(this)"   onkeypress = "refmob2(this.value)"  name="REF_MOBILE_2"/>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
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
                                    <td style="width:18%;">
                                        <b style="color: Red; width:2%; float:left;">*</b>&nbsp;&nbsp;
                                        <input style="width:80%;  float:right;" type="text"  onkeyup="return z(this)"  onkeypress="return wordcheck(event)"  maxlength="15" id="LANG_1" name="LANG_1"/>
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
                                 <a id="add" style=" cursor: pointer;" onclick="addmorelang()">&nbsp;Add More . . .;
                                 </a></td>
                                 </tr>
                                <tr id="rowlang2"  >
                                    <td style="width:18%;">
                                        <b style="color: Red; width:2%; float:left;">*</b>&nbsp;&nbsp;
                                        <input style="width:80%;  float:right;"  type="text" maxlength="10"  id="LANG_2" name="LANG_2"
                                          onkeyup="return z(this)"  onkeypress="return wordcheck(event)" />
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
                               
                                <tr id="rowlang3">
                                    <td style="width:18%;">
                                       <input style="width:80%;  float:right;" input type="text" id="LANG_3" maxlength="10"  name="LANG_3"/>
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
                                </tr>
                            </table>
                            <table class="table5" border="1" style="border:4.0px ;">
                                <tr>
                                    <th>&nbsp;
                                        
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
                                </tr>
                            </table>
                           <textarea class="header4" id="HOBBIES" rows="4" cols="40" name="HOBBIES" maxlength="299"
                                  onkeyup="return z(this)"  onkeypress="return wordcheck(event)"
                                  placeholder="Share your Hobbies Please"></textarea>
                             
                            <textarea id="JUSTIFY" rows="4" cols="40" name="JUSTIFY"  onkeyup="return z(this)"  onkeypress="return wordcheck(event)"
                              maxlength="350"         placeholder="Please justify why you are applying for this position at EFU"></textarea>
                              <table class="table5"  style=" text-align: justify;">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr><tr>
                                    <td>&nbsp;</td>
                                </tr><tr style="width:100%">
                                    <td style="width:100%"><label class="declarlbl" style="overflow-x:auto; max-width:10px;">
                                    Declaration </label>
                                    
                                    
                                    <label style="overflow-x:auto; max-width:10px;">
         I hereby declare that all the information in this employment application is complete and correct to the best of my knowledge.
         I authorize EFU General Insurance Ltd. to verify any information stated above.
         Any misrepresentation of above information may lead to action against my application as per rules and regulations of EFU General Insurance Ltd.
                                    
                                    </label></td>
                                </tr><tr>
                                    <td style=" width:10%; float:left;">
                            
                             <input type="checkbox" title="Accept Declaration" style=" width:2%;float:left;" checked="checked" name="checky" id="checky"/>
                             </td>
                               
                                <td style=" width:70%; float:right;">
            <input  type="button" value="Submit Application" style=" width:20%;float:right;"  name="submit2" id="submit2" onclick="formpost()" />  
                       
            </td></tr>
                            </table>
                               
                           
                        
                    </div> <!-- end of panel 4-->
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
                  <table class="table1" style="margin-left: 6.5%;overflow-x:auto;min-width:2%; max-width: 100%;" width="735" height="42">
                  <tr style="overflow-x:auto;min-width:2%; max-width: 100%;"><td style="width:50%;">
                  <input type="button"  name="yno" style="width:50%;margin-bottom:9%; " id="yno" onclick="clicker()" value="Next"/>
                    </td><td style="width:50%;">  <input type="button"  style="margin-bottom:9%; min-width:2%;max-width:50%;   margin-left: 32.5%;" name="prevbt" id="prevbt" onclick="clicker2()" value="Previous"/>
                  </td> </tr> </table>
                </div>
                <i style="overflow-x:auto;min-width:2%; max-width: 95%;   margin-left:5%; color: Aqua; "> Best Viewed in IE 10 and above, Firefox 50.1.0 and Chrome Version 57.0.2987.133 at resolution 1280X1024.</i>
            </div>
            
            
            
            </form>
        </body>
    </html>
