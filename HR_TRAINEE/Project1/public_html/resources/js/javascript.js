     
   
   
   
              $(function() {
              
//              var cnic = document.getElementById("CNIC").value; var minyr=0;
//              if (cnic == "42201-5238185-1"){ minyr= "01/01/1984"; }
//              else { minyr= "01/01/1987"; }
              
//                      $('input[name="DOB"]').daterangepicker({
//                        singleDatePicker: true,
//                        showDropdowns: true,
//                        minYear: 1987,
//                        maxYear: 1998
//                      }, function(start, end, label) {
//                        var years = moment().diff(start, 'years');
//                        alert("You are " + years + " years old!");
//                      });
                      
                      $('input[name="DOB"]').daterangepicker({
                      locale: {
                        format: 'DD/MM/YYYY'
                      },
                       singleDatePicker: true,
                        showDropdowns: true,
                      timePicker: false,
                      timePickerIncrement: 5,
                      timePicker12Hour: false,
                      timePickerSeconds: false,
                      minDate: '01/01/1987',
                      maxDate: '30/12/1998',
                      startDate: '01/01/1987'
                   }, function(start, end, label) {
                        var years = moment().diff(start, 'years');
                      //  alert("You are " + years + " years old!");
                      });
                      
                       
                        $('input[name="EX1_FR"]').daterangepicker({
                        locale: {
                        format: 'DD/MM/YYYY'
                      },
                      singleDatePicker: true,
                        showDropdowns: true, 
                  minDate: moment('01/01/1996'), maxDate: moment().endOf('year')
                        
                      });
                      
                        $('input[name="EX1_TO"]').daterangepicker({
                        locale: {
                        format: 'DD/MM/YYYY'
                      },
                        singleDatePicker: true,
                        showDropdowns: true,
                       minDate: moment('01/01/1997'), maxDate: moment().endOf('year')
                      });
                      
                         $('input[name="EX2_FR"]').daterangepicker({
                        locale: {
                        format: 'DD/MM/YYYY'
                      },
                        singleDatePicker: true,
                        showDropdowns: true,
                        minDate: moment('01/01/1996'), maxDate: moment().endOf('year')
                      });
                      
                        $('input[name="EX2_TO"]').daterangepicker({
                       locale: {
                        format: 'DD/MM/YYYY'
                      },
                        singleDatePicker: true,
                        showDropdowns: true,
                     minDate: moment('01/01/1997'), maxDate: moment().endOf('year')
                      });
                       
                    });
         
   
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
                    
                  $('#checky').change(function () {
                    $('#submit2').prop("disabled", !this.checked);
               
                }).change()
                
//                   $('#ongoing').change(function () {
//                    $('#EX1_TO').prop("disabled", this.checked);
//               if (this.checked)
//               {
//               $('#EX1_TO').val("");
//               $('#EX1_TO') .css("background-color", "#b7d6e5");
//                }
//                 if (!this.checked)
//               {
//                
//               $('#EX1_TO') .css("background-color", "white");
//                }
//                }).change()
//                
//                $('#ongoing2').change(function () {
//                    $('#EX2_TO').prop("disabled", this.checked);
//                if (this.checked)
//               {
//               $('#EX2_TO').val("");
//               $('#EX2_TO') .css("background-color", "#b7d6e5");
//                }
//               if (!this.checked)
//               {
//                
//               $('#EX2_TO') .css("background-color", "white");
//                }
//                }).change()
                
                
                //    $("#pq2").hide(); $("#pq3").hide(); $("#tr2").hide(); $("#exp2").hide();
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
                                        { 
                                        var exp2=document.getElementById("exp2");
                                          if (exp2.style.visibility == 'hidden')
                                         { 
                                          exp2.style.visibility = 'visible';
                                       //  $("<br/>").insertAfter("#exp1");
                                          $( exp2 ).appendTo( $( "#exp1" ) );
                                           }
                                         }
                                         
                                         function addmoreref()
                                          { 
                                        var ref2=document.getElementById("ref2");
                                        
                                         if (ref2.style.visibility == 'hidden')
                                         { 
                                          ref2.style.visibility = 'visible';
                                         //$("<br/>").appendTo( $( "#ref1" ) );
                                               $( ref2 ).appendTo( $( "#ref1" ) );
                                           }
                            }
                                     var globalcounter=0;  
                                function addmoreedu()
                                    { 
                                    var seledu=document.getElementById("seledu").value;
                                     
                                    var pq2=document.getElementById(seledu);
                                 
                                    if (pq2.style.visibility == 'hidden')
                                     {
                                     globalcounter = globalcounter+1;
                                     pq2.style.visibility = 'visible';
                                     if (globalcounter == 1)
                                   { 
                                   //$("<br/>").insertAfter("#eduhead");
                                   }
                                     
                                     $( pq2 ).appendTo( $( "#eduhead" ) );
                                    }
                                    }
                            
                                 function addmore()
                                            { 
                                           
                                            var pq2=document.getElementById("pq2");
                                            var pq3 =document.getElementById("pq3");
                                          
                                            if (pq2.style.visibility == 'hidden')
                                             {
                                             pq2.style.visibility = 'visible';
                                         //  $("<br/>").insertAfter("#pq1");
                                            $( pq2 ).appendTo( $( "#pq1" ) );
                                            
                                             }
                                            else {
                                            pq3.style.visibility = 'visible';
                                          //  $("<br/>").insertAfter("#pq2");
                                            $( pq3 ).appendTo( $( "#pq2" ) );
                                            
                                            }
                                            }
                                     function addmorelang()
                                { 
                                var pq2= document.getElementById("rowlang2");
                                var pq3 = document.getElementById("rowlang3");
                               var LANG_1 =document.getElementById("LANG_1").value;
                               var LANG_2 =document.getElementById("LANG_2").value;
                                
                                if (LANG_1.length>0&&pq2.style.visibility == 'hidden')
                                 {
                                       pq2.style.visibility = 'visible';
                                //    $("<br/>").insertAfter("#rowlang1");
                                    $( pq2 ).appendTo( $( "#rowlang1" ) );
                                    
                                  }
                                else if (LANG_2.length>0&&(pq2.style.visibility == 'visible')) {
                     
                                pq3.style.visibility = 'visible';
                               //    $("<br/>").insertAfter("#rowlang2");
                                  $( pq3 ).appendTo( $( "#rowlang2" ) );
                                 }
                                 
                            }
                            
                         function rangecheck() 
                        {                     
                            var EX1FR=document.getElementById('EX1_FR').value;
                            var EX1TO=document.getElementById('EX1_TO').value;
                            var comp=document.getElementById('EX1_COMP').value;
                       
                            if (comp.length>0) {
                          var one_day=1000*60*60*24;

                            var x=EX1FR.split("/");
                            
                            var y=EX1TO.split("/");
                            
                            var date1=new Date(x[2],(x[1]-1),x[0]);
                            
                            var date2=new Date(y[2],(y[1]-1),y[0])
                            
                            var month1=x[1]-1;
                            var month2=y[1]-1;
                            
                            _Diff=Math.ceil((date2.getTime()-date1.getTime())/(one_day));
                            if(_Diff<0)
                            
                            {
                            alert("Select correct Date");
                         document.getElementById('EX1_FR').style.border = "thin dotted red";
                         document.getElementById('EX1_TO').style.border = "thin dotted red";
                            }
                            else 
                            {
                            document.getElementById('EX1_FR').style.border = "none";
                            document.getElementById('EX1_TO').style.border = "none";
                            }
                            }
                        return true;
                         }
                         
                         
                         function rangecheck2() 
                        {
                            var EX2FR=document.getElementById('EX2_FR').value;
                            var EX2TO=document.getElementById('EX2_TO').value;
                            var comp=document.getElementById('EX2_COMP').value;
                          
                           
                            if (comp.length>0) {
                           var one_day=1000*60*60*24;

                            var x=EX2FR.split("/");
                            
                            var y=EX2TO.split("/");
                            
                            var date1=new Date(x[2],(x[1]-1),x[0]);
                            
                            var date2=new Date(y[2],(y[1]-1),y[0])
                            
                            var month1=x[1]-1;
                            var month2=y[1]-1;
                            
                            _Diff=Math.ceil((date2.getTime()-date1.getTime())/(one_day));
                            if(_Diff<0)
                            
                            {
                            alert("Select correct Date");
                         document.getElementById('EX2_FR').style.border = "thin dotted red";
                         document.getElementById('EX2_TO').style.border = "thin dotted red";
                            }
                            else 
                            {
                            document.getElementById('EX2_FR').style.border = "none";
                            document.getElementById('EX2_TO').style.border = "none";
                            }
                            }
                        return true;
                        } 
                            
                        function rangechecker(comp) 
                        {
                            var EX1FR=document.getElementById('EX1_FR').value;
                            var EX1TO=document.getElementById('EX1_TO').value;
                         
                            if (comp.length>0) {
                              var one_day=1000*60*60*24;

                            var x=EX1FR.split("/");
                            
                            var y=EX1TO.split("/");
                            
                            var date1=new Date(x[2],(x[1]-1),x[0]);
                            
                            var date2=new Date(y[2],(y[1]-1),y[0])
                            
                            var month1=x[1]-1;
                            var month2=y[1]-1;
                            
                            _Diff=Math.ceil((date2.getTime()-date1.getTime())/(one_day));
                            
                            if(_Diff<0)
                            {
                           return false;
                            }
                            }
                        return true;
                        }
                           
                        function rangechecker2(comp) 
                        {
                            var EX2FR=document.getElementById('EX2_FR').value;
                            var EX2TO=document.getElementById('EX2_TO').value;
                            
                             if (comp.length>0) {
                              var one_day=1000*60*60*24;

                            var x=EX2FR.split("/");
                            
                            var y=EX2TO.split("/");
                            
                            var date1=new Date(x[2],(x[1]-1),x[0]);
                            
                            var date2=new Date(y[2],(y[1]-1),y[0])
                            
                            var month1=x[1]-1;
                            var month2=y[1]-1;
                            
                            _Diff=Math.ceil((date2.getTime()-date1.getTime())/(one_day));
                            
                            if(_Diff<0)
                            {
                           return false;
                            }
                            }
                        return true;
                        }  
                            
                            
                            
                document.getElementById("submit2").addEventListener("click", function(event){
                    event.preventDefault()
                });
                        function formpost()
                            {
                                document.getElementById('submit2').style.display="none";  
                               
//                                var DOB=document.getElementById('DOB').value;
                                var EX1_COMP=document.getElementById("EX1_COMP").value;
                                var EX2_COMP=document.getElementById("EX2_COMP").value;
                                var EX1FR=document.getElementById('EX1_FR').value;
                                var EX1TO=document.getElementById('EX1_TO').value;
                                var EX2FR=document.getElementById('EX2_FR').value;
                                var EX2TO=document.getElementById('EX2_TO').value;
                                

                             var matdet="";var bachdet="";var intdet=""; var edubool=false;
                                var filled=true;
//                            var myTextDash=document.getElementById('CELL_PH').value;
//                         var myRemoveDash = myTextDash.replace(/-/g,' ');
//                            document.getElementById('CELL_PH').value = myRemoveDash;
                           
                            var ex1range=  rangechecker(EX1_COMP);
                            var ex2range= rangechecker2(EX2_COMP); 
                            //  var datetrue= isDate(DOB);
                              
                             var counter=0;
                            var elementid=[];
                            var emptyc=0;
                             var inputs = document.getElementsByClassName("required");
                        var inputfields = document.forms["form9"].getElementsByTagName("input");
                        
                        for (var p = 0, element; element = inputs[p++];) 
                   { 
                   document.getElementById(element.id).style.border = "none";
                   
                    if  (!(element.id==="REF_PHONE_1")&&!(element.id==="REF_PHONE_2"))
                  {
                   counter++;
                 //   var allfields= element.id
                    if ( ( element.value === "" ) ||( element.value === "Year_of_Passing" ))
                       {
                       emptyc++; 
                       if(element.id)
                       {
                       elementid.push(element.id);
                      
                       filled=false;
                       }
                       if ( element.classList.contains("MAT")  
                       || element.classList.contains("BACH") 
                       || element.classList.contains("INT")  )
                       {
                      //  alert(element.id + element.className);
                      edubool=false;
                        document.getElementById("acaedulbl").style.border = "thin dotted red";
                        if ( element.classList.contains("MAT") ){matdet="Matric";}
                        if ( element.classList.contains("BACH") ){bachdet=" Bachelors";}
                        if ( element.classList.contains("INT") ){intdet=" Intermediate";}
                       }
                       else {
                       edubool=true;
                        document.getElementById("acaedulbl").style.border = "none";
                       }
                       }
                            }
                           }
 
                            if (filled && ex1range && ex2range)
                         {
//                      document.getElementById("form9").method = "get"; 
//                      document.getElementById("form9").action = "dbservlet";
//                        document.getElementById("form9").method = "post"; 
//                        document.getElementById("form9").action = "insert2.jsp";
//                        document.forms["form9"].submit();
                        
                      //  var frm=$("#motorform");
        	                  var formData = new FormData( document.getElementById("form9") );
                                  var xhttp="";
                                if (window.XMLHttpRequest) {
                                      xhttp = new XMLHttpRequest();
                                 } else {
                                     xhttp = new ActiveXObject("Microsoft.XMLHTTP");
                                }
                            
                              xhttp.open("POST", "insert2.jsp", true);
                             // xhttp .setRequestHeader("content-type", "multipart/form-data");
                              xhttp.send(formData);
                             document.getElementById('msgdisp').innerHTML=" " ;
                             
                              xhttp.onload = function(e) {
                              
                                if (this.status == 200) {
                                var code=xhttp.responseText;
                                var datar = code.split("|");  
                                var truth=datar[1];
                                
                                if (truth=="true")
                                {
                                alert('Thank You for choosing EFU! Application Submitted Succesfully!');
                                document.location.reload(true);
                                
                                 }
                                else
                                {alert(datar[1]); // when people recieve error
                                } 
                                 }
                                 };
              //  alert("All Fields Filled  "+elementid);
                          document.getElementById('submit2').style.display="block";  
                            }
                         else 
                          {  if (!ex1range||!ex2range)
                          {
                                alert("You didn't enter Compulsory field(s) and "+matdet+" "+intdet+" "+bachdet+" details and incorrect Expreince start date.");
                         }
                          else{
                                alert("You didn't enter Compulsory field(s) and "+matdet+" "+intdet+" "+bachdet+" details");
                          }
                            //     alert("You didn't enter Compulsory field(s) "+elementid[0]);
                                document.getElementById(elementid[0]).focus();
                             for (var x = 0, elem; elem = elementid[x++];) 
                  { 
                                document.getElementById(elem).style.border = "thin dotted red";
                            }
                                 document.getElementById('submit2').style.display="block";  
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
                
                   if(charCode != 58 && charCode != 59 && charCode != 32
                   &&charCode!=40 && charCode!=41 && charCode!=43 && charCode!=45 && charCode!=46 && charCode!=47)
                    {if (charCode > 31 && 
                    ((charCode < 48 || charCode > 57)&&(charCode < 65 || charCode > 90)&&(charCode < 97 || charCode > 122)))
                       { return false;}}
                       
                return true;
                }
                   function changegrade()
                   {
                   
                   
                   }
                function wordcheck(evt)
                {
                var charCode = (evt.which) ? evt.which : event.keyCode
                
                   if ( (charCode != 32) && (charCode != 38) &&(charCode != 44) &&(charCode != 46) )
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
//                     var level = document.getElementById("INTER").value;       
//                  if (level=="level")
//                  {
//                  var patt = new RegExp("\d{2}[\.]\d{2}|\[A-C][+-]?|D");
//                    var x = document.getElementById("INTER_GPA");
//                   var res = patt.test(x.value);
//                    if(!res){
//                    x.value = '';
//                        return x.value;
//                   }
//                  }
//               else {  
                      patt = new RegExp("\d{2}[\.]\d{2}");
                      x = document.getElementById("INTER_GPA");
                     res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,2})(\d{0,2})/).slice(1).join('.')
                        .replace(/-*$/g, '');
                        return x.value;
                   }
                //   }
                }
                //matric gpa
                 function matgpa(currvalue) {
                 
//                 var level = document.getElementById("MATRIC").value;
//                 
//             if (level=="level")
//             {
//             var patt = new RegExp("\d{2}[\.]\d{2}|\[A-C][+-]?|D");
//                    var x = document.getElementById("MAT_GPA");
//                   var res = patt.test(x.value);
//                   if(!res){
//                    x.value = '';
//                        return x.value;
//                   }
//             }
//               else { 
               patt = new RegExp("\d{2}[\.]\d{2}");
                      x = document.getElementById("MAT_GPA");
                     res = patt.test(x.value);
                   if(!res){
                    x.value = x.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,2})(\d{0,2})/).slice(1).join('.')
                        .replace(/-*$/g, '');
                        return x.value;
                   }
               //  }
                   
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
                 //new referenece f
                 function refmob11(el) {
                    var patt = new RegExp("\d{4}[\-]\d{7}");
                    var x = document.getElementById("REF_MOBILE_1");
                   var res = patt.test(el.value);
                   if(!res){
                   el.value = el.value
                        .match(/\d*/g).join('')
                        .match(/(\d{0,4})(\d{0,7})/).slice(1).join('-')
                        .replace(/-*$/g, '');
                   }
                }
                
                //ref mobile 1
                 function refmob1(el) {
                    var patt = new RegExp("\d{4}[\-]\d{7}");
                    var x = document.getElementById("REF_MOBILE_1");
                   var res = patt.test(el.value);
                   if(!res){
                   el.value = el.value
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
                
                            function nickeyup(evt)
                            {
                            
//                              if ((el.keyCode == 8) || (el.keyCode == 9 )||( el.keyCode == 27 )|| (el.keyCode == 65 && el.ctrlKey === true) )
//                                                  { return ;}
//                              if( el.keyCode < 48 || el.keyCode > 57)
//                              {  el.value='';
//                              return false;
//                              }         
                               var e = event || evt; // for trans-browser compatibility
                                var charCode = e.which || e.keyCode;
                             if (charCode < 48 || charCode > 57)
                                 {   return false;}
                             
                             
                               return true;
      
                             }
             
                             function nickeypress(evt)
                            {
                             var length = evt.target.value.length; 
                             if(length == 5 || length == 13)
                               { evt.target.value=evt.target.value+'-';
                              
                               }
                             var charCode = (evt.which) ? evt.which : event.keyCode
        
                             if (charCode > 31 && (charCode < 48 || charCode > 57))
                               { return false;}
                            
                            
                            }
                            
                            function checkLength(el) {
                          if (el.value.length != 15) {
                            el.value='';
                            return false; 
                          }
                          return true;
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
                 var timer;
//                  function nickeyup(el)
//                    {
//                        if ((el.keyCode == 8) || (el.keyCode == 9 )||( el.keyCode == 27 )|| (el.keyCode == 65 && el.ctrlKey === true) )
//                                          { return ;}
//                      if( event.keyCode < 48 || event.keyCode > 57)
//                      {  el.value='';
//                      return false;
//                      }
////                     if ((el.keyCode != 46 || $(el).val().indexOf('.') != -1) && (el.keyCode < 48 || el.keyCode > 57) && el.keyCode != 8) {
////                        el.value='';
////                      return false;
////                    }
//                          var patt = new RegExp("(^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$)");
//                          var res = patt.test(el.value);
//                      clearTimeout(timer);
//                     timer=setTimeout(function validate(){
//                     if (res){
//                        return true; 
//                      }
//                     else{el.value = ''; return false;}
//                       },100);
//
//                    }
                    
                    
//                     function nickeyup(el)
//                    {
//		 	
//                      var val = el.value;
//                        
//                      if ((el.keyCode == 8) || (el.keyCode == 9 )||( el.keyCode == 27 )|| (el.keyCode == 65 && el.ctrlKey === true) )
//                                          {
//                                          
// 		     var newVal = '';
//		     if(val.length > 4) {
//		        this.value = val;
//		     }
//		     if((val.length > 5) && (val.length < 13)) {
//		        newVal += val.substr(0, 5) + '-';
//		        val = val.substr(5);
//		     }
//		     if (val.length > 12) {
//		        newVal += val.substr(0, 5) + '-';
//		        newVal += val.substr(5, 7) + '-';
//		        val = val.substr(12);
//		      }
//		      newVal += val;
//		      this.value = newVal.substring(0, 15); //total length with '-'   
//                                          
//                                          return ;}
//                      if( event.keyCode < 48 || event.keyCode > 57)
//                      {  el.value='';
//                     // return false;
//                      } 
//		      
////		     var newVal = '';
////		     if(val.length > 4) {
////		        this.value = val;
////		     }
////		     if((val.length > 5) && (val.length < 13)) {
////		        newVal += val.substr(0, 5) + '-';
////		        val = val.substr(5);
////		     }
////		     if (val.length > 12) {
////		        newVal += val.substr(0, 5) + '-';
////		        newVal += val.substr(5, 7) + '-';
////		        val = val.substr(12);
////		      }
////		      newVal += val;
////		      this.value = newVal.substring(0, 15); //total length with '-'
//		  
//		 } 
                
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
              if ((el.value.length < 11)||(el.value.length>11)||!el.value.startsWith('03')) {
                el.value='';
                return false; 
              }
              return true;
            }
            
        function mobilenum(evt)
      {
        
         var charCode = (evt.which) ? evt.which : event.keyCode
        
         if (charCode > 31 && (charCode < 48 || charCode > 57))
           { return false;}
          return true;
      }
            
            ////mobile with '-'
            function checkmobd(el) {
//             var charCode = (evt.which) ? evt.which : event.keyCode
//             var myVal = event.target.value;
//                 if(charCode < 48 || charCode  > 57)
//                       { 
//                        event.target.value='';
//                       return false;}
             
            if ((el.value.length < 11)||(el.value.length>11)||!el.value.startsWith('03')){
                event.target.value='';
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

       
                 function emailcheck(el)
                 {  var patt = new RegExp("[^@]+@[^@]+\.[a-zA-Z]{2,6}");
                var res = patt.test(el.value);
                 if (res===false){
                 document.getElementById("email").value = '';
                 return false;}
                 return true;
                 }
             