   
      
   //mobile without '-'
function checkmob(el) {
  var bool="true";
  if(el.value.startsWith('03')||el.value.startsWith('+92')){
  if (el.value.startsWith('03'))
  {
  if ((el.value.length < 8)&&isNaN(el.value)&&(el.value.length>16)) {
   //alert(el.value+" "+el.value.length+!isNaN(el.value)+"=11"+!(el.value.length>11));
   bool="false";
  }
 // alert(bool);
  if (bool=="false"){el.value='';
    return false; }
    else{
  return true;}
  }
   else if(el.value.startsWith('+92'))
  {
  if ((el.value.length < 8)&&isNaN(el.value)&&(el.value.length>16)) {
   bool="false";
  }
 //  alert(bool);
  if (bool=="false"){el.value='';
    return false; }
    else{
  return true;}
  }
  }
  else
  {
    if ((el.value.length < 8)&&isNaN(el.value)&&(el.value.length>16)) {
   //alert(el.value+" "+el.value.length+!isNaN(el.value)+"=11"+!(el.value.length>11));
   bool="false";
  }
 // alert(bool);
  if (bool=="false"){el.value='';alert(el.value.length);
    return false; }
    else{
  return true;}
  }
 
}
 function numfunc(el) {
 //alert(el);
 var bool="false";
   if (!isNaN(el.value)) {
   //alert(el.value+" "+el.value.length+!isNaN(el.value)+"=11"+!(el.value.length>11));
   bool="true";
  }
 // alert(bool);
  if (bool=="false"){el.value='';
    return false; }
    else{
  return true;}
}
   jQuery(function(){		
  
	    jQuery("#policyno").validate({
       				//expression: "if (VAL.length > 5 && VAL) return true; else return false;",
                    expression: "if (VAL) return true; else return false;"
//                    message: "Please enter the Required field"
                });

//  alert("Use this call to make AJAX submissions.");
				jQuery('.AdvancedForm').validated(function(){
							if (verifyfrom()){
								//alert("Use this call to make AJAX submissions.");
								document.forms["policyverify"].submit();
								};
				});
                          var startdate = $('#ins_fr').val() ;
     var endate=$('#ins_to').val() ;
     
         
                                
			});	
  function pol_key_press(res)
  { var poly2 = document.getElementById("policyno"); 
  if(poly2.value.length==18){if(poly2.value.indexOf('/', 10)==10||poly2.value.indexOf('/', 13)==13||poly2.value.length==18 )
  { return true;}
  else 
  { poly2.value="";
  return false;}}
  
  }
  
  function verifyfrom(){
//alert('newclass');
//	alert(document.forms["Search"].value);
            
  	var poly = document.getElementById("policyno").value;  
  	var newclass = poly.substring(3, 4); 
      
	if ( (poly.length!=18) )
		{
				{alert("Not Valid Number entered"); return false;	}		
		};
		if(poly.length==0){alert("Not Valid Number"); return false;}
  }
                
  function openNav() {
 //$("mySidenav").show();
    document.getElementById("mySidenav").style.width = "80px";
    
    document.getElementById("main").style.marginLeft = "18%";
    //document.body.style.backgroundColor = "#dceef4";
    document.body.style.backgroundColor = "#b8e0ed";
}

function closeNav() {

    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "24%";
   // document.body.style.backgroundColor = "#bee7f4";
 //  document.body.style.backgroundColor = "#8ce4ff";
  document.body.style.backgroundColor = "White";
}
function hidNav() {
    document.getElementById("mySidenav").style.width = "0";
   
}


     $(document).ready(function(){
    // alert();
     document.querySelector("claim").addEventListener("keypress", function (evt) {
    if (evt.which < 48 || evt.which > 57)
    {
        evt.preventDefault();
    }
});

//           $( "#loss_date" ).datepicker({
//               datepicker: true,
//            changeMonth: true, 
//
//    changeYear: true, 
//               dateFormat:"dd-M-y", 
//              //  buttonImage: "../resources/calendar_img.gif",
//                buttonImageOnly: true,
//                 onSelect:function(){
//		$("input[tabindex="+(this.tabIndex+1)+"]").focus();
//                 $(this).focus();
//        }
//                
//                });       
                       

  $("#policyno").keyup(function(event){
    if(event.keyCode == 13){
        $("#find_pol").click();
    }
});
     
     document.getElementById("mySidenav").style.width = "0%";
    document.getElementById("form9").style.marginLeft= "2%";
       $("#dialogbtn").on('click', function(){   $( "#dialog8" ).dialog({
         position: 'center',
         width: 1100,   
        maxHeight: window.innerHeight - 195,
        overflow:'scroll',
        show: {
effect: "fade",
duration: 360
},
hide: {
effect: "fade",
duration: 400
},
    buttons: [
        {
            text: "Close",
            click: function() {
                $( this ).dialog( "close" );
                 $( "#dialog8" ).hide();
            }
        }
    ]
});});
     }); 
     
      
    function ValidateDate() {
  var dtValue = document.getElementById('loss_date').value;
 // alert(dtValue);
//  var dtRegex = new RegExp("^([0]?[1-9]|[1-2]\\d|3[0-1])-(JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)-[1-2]\\d{3}$", 'i');
//  // alert(dtValue+" "+dtRegex.test(dtValue));
//   return dtRegex.test(dtValue); 

  //  var pattern = /(.*?)\/(.*?)\/(.*?)$/;
  //  var result = dtValue.replace(pattern,function(match,p1,p2,p3){
  //      var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
  //      return (p2<10?"0"+p2:p2) + " " + months[(p1-1)] + " " + p3;
  //  });
  dtValue.setDate(dtValue.getDate() - 1);

dtValue = dtValue.getDate()+"-"+monthNames[dtValue.getMonth()]+"-"+dtValue.getFullYear();
  //  alert(dtValue);

}

        function validaterange() 
    {
        var monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN",
        "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"
        ];
       
        var ins_fr=document.getElementById('ins_fr').value,
         ins_to = document.getElementById('ins_to').value,
        dtValue = document.getElementById('loss_date'),
        //        from   =from_.getTime(),
 //        to   = to_.getTime(),
        loss_date=dtValue.value,
        bool4=true,
        bool5=true,
        resbool=true;
//        endt_ext=document.getElementById('endt_ext').value;
        
       var toarray = ins_to.split("/");
       var fromarray = ins_fr.split("/");
       var newfromdate = fromarray[1] + '/' + fromarray[0] + '/' + fromarray[2];
       var newtodate = toarray[1] + '/' + toarray[0] + '/' + toarray[2];
        var todate_ = new Date(newtodate);
        var fromdate_ = new Date(newfromdate);
//        var datearray = loss_date.split("/");
//        var newlossdate = datearray[1] + '/' + datearray[0] + '/' + datearray[2];
        
        var datetypeloss= new Date(loss_date);
        
        bool4 = datetypeloss < todate_;
        bool5 = datetypeloss > fromdate_;
        resbool=bool4&&bool5;
   //     alert("loss date "+datetypeloss+"to   "+todate_ +"to as date "+ins_to+" from  " +fromdate_+"  > startdate"+ bool5);
  
   return (resbool);
   
    }

          function showmsg()
          {
          alert(" showing something ");
          }

      function submit_intim() {
      
      var error="";
     var bool = validaterange();
 // alert(bool);
     if (validaterange()==false) {
 
    error="Date of Claim should be within the Period of Insurance.";
   $('#msg_disp').html(error);
    setTimeout(function () {
                 $("#msg_disp").html('');
            }, 5 * 1000);
 } 
 else {
     var monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN",
  "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];
  
          var polno=document.getElementById('policyno').value;
         var cir=document.getElementById('circum').value;
          var loss=document.getElementById('claim').value;
           var con=document.getElementById('contact').value;
            var doc=document.getElementById('doc_id').value;
            var email=document.getElementById('email').value;
            var fname=document.getElementById('fname').value;
            var mname=document.getElementById('mname').value;
            var lname=document.getElementById('lname').value;
             var cnic=document.getElementById('CNIC').value;
              var ins_to=document.getElementById('ins_to').value;
               var ins_fr=document.getElementById('ins_fr').value;
                var dob=document.getElementById('DOB').value;
               var dol= new Date(document.getElementById('loss_date').value);
               dol = dol.getDate()+"-"+monthNames[dol.getMonth()]+"-"+dol.getFullYear();
                var lod= document.getElementById('loss_desc').value;
                 var lop= document.getElementById('loss_place').value;
                 var pplan= document.getElementById('product_plan').value;
         // alert(lod);
             
           var br="";
       if (polno!="" && cir!="" && dol!="" && loss!="" && con!="" && lod!=""&&lop!=""&&email!="")
        { 
       // alert(polno+" "+cir+" "+loss+" "+con+" "+doc+" "+email+" "+fname+" "+mname+" "+lname+" "+cnic+" "+dob+" "+dol+" "+lod+" "+lop+" "+pplan);
        
        
        br=polno.substring(0,3);
      //  alert(br+"   "+doc);
        $.ajax({
      type: "GET",
      url: 'claim_mid.jsp',cache: false  ,
     
      data: { br: br, doc:doc,cir:cir,con:con,loss:loss,email:email,pol:polno,fname:fname,mname:mname,lname:lname,to:ins_to,fr:ins_fr,dob:dob,nic:cnic,dol:dol,lop:lop,lod:lod,pplan:pplan, t: "sub" },
      success: function(json) {
    var split1=json.split('|');
    var msg = split1[1];
   if (msg==="537")
   {msg="Loss Amount doesn't match Circumstance of Loss.";
   }
  $('#msg_disp').empty(); 
  //$('#msg_disp').css({ 'color': 'Green', 'font-size': '150%' });
   $('#msg_disp').html(msg); 
   setTimeout(function () {
                 $("#msg_disp").html('');
            }, 5 * 1000);
   document.getElementById('loss_date').value="";
                 document.getElementById('policyno').value="";
              document.getElementById('loss_desc').value="";
                 document.getElementById('loss_place').value="";
         document.getElementById('circum').value="";
          document.getElementById('claim').value="";
           document.getElementById('contact').value="";
           document.getElementById('doc_id').value="";
            document.getElementById('email').value="";
            document.getElementById('fname').value="";
            document.getElementById('mname').value="";
            document.getElementById('lname').value="";
            document.getElementById('CNIC').value="";
              document.getElementById('ins_to').value="";
              document.getElementById('ins_fr').value="";
                document.getElementById('DOB').value="";
    
      },
       error: function(xhr, ajaxOptions, thrownError) {  
     $('#msg_disp').empty(); 
  //$('#msg_disp').css({ 'color': 'Green', 'font-size': '150%' });
   $('#msg_disp').html("either TO or CC recipients are less than  1."); 
   setTimeout(function () {
                 $("#msg_disp").html(' ');
            }, 5 * 1000);
      
      
      }
   }); 
       }
       else 
       { $('#msg_disp').empty(); 
  //$('#msg_disp').css({ 'color': 'Green', 'font-size': '150%' });
   $('#msg_disp').html("Haven't entered all values "); 
   setTimeout(function () {
                 $("#msg_disp").html('');
            }, 5 * 1000);
       }
       }
    // $('input[type="text"], textarea').val('');
       }
         function emailcheck(el)
     {  var patt = new RegExp("[^@]+@[^@]+\.[a-zA-Z]{2,6}");
    var res = patt.test(el.value);
     if (res===false){
     document.getElementById("email").value = '';
     return false;}
     return true;
     }
       function intim_pol() {
          var polno=document.getElementById('policyno').value;
         var fname=document.getElementById('fname');
          var mname=document.getElementById('mname');
           var lname=document.getElementById('lname');
           
  
       if (polno!="")
        { $.ajax({
      type: "GET",
      url: 'claim_mid.jsp',cache: false  ,
     
      data: { polno: polno, t: "get_pol" },
      success: function(json) {
     //alert(json);

     var split1=json.split('|');
    var name = split1[1].split(' ');

  fname.value = name[0];
   mname.value=name[1];
   lname.value=name[2];  
   if (mname.value ===""||mname.value ===''||mname.value ===" "||mname.value ===null||mname.value ==='undefined')
    {  
    mname.value='-';
    }  
    if (lname.value ===""||lname.value ===''||lname.value ===" "||lname.value ===null||lname.value ==='undefined')
    {  lname.value='-';
    } 
  document.getElementById('CNIC').value=split1[2];
   document.getElementById('DOB').value=split1[4];
   document.getElementById('ins_fr').value=split1[5];
   document.getElementById('ins_to').value=split1[6];
    document.getElementById('email').value=split1[7];
     document.getElementById('contact').value=split1[8];
    // alert(split1[9]);
     document.getElementById('doc_id').value=split1[9];
     if (split1[10]===""||split1[10]===" "||split1[10]===null||split1[10]===' '||split1[10]===''||split1[10]==='undefined'){
    document.getElementById('endt_ext').value='-';
   // alert(split1[10]);
     }
     else{document.getElementById('endt_ext').value=split1[10];}
     document.getElementById('product_plan').value=split1[11];
   // var split2=split1[1].split('*');
  
     //var split3= split2;
 
  $('#newres').empty(); 
  //cityv2.innerHTML=cityv.innerHTML; 
     
      },
       error: function(xhr, ajaxOptions, thrownError) {  
      alert("Data fetch Error, Sir.");}
   }); 
       }
       else 
       { alert("Haven't entered policyno "+polno);
       }
   
       }
   
function polycheck(evt)
{
var poly = document.getElementById("policyno").value;
var charCode = (evt.which) ? evt.which : event.keyCode

    if(charCode != 47)
    {if (charCode > 31 && (charCode < 48 || charCode > 57))
       { return false;}}
return true;
}
     
//	function nickeyup()
//{ 
//var x = document.getElementById("claim");
//var len =x.value.length;
//
// if ((x.keyCode == 8) || (x.keyCode == 9 )||( x.keyCode == 27 )|| (x.keyCode == 65 && x.ctrlKey === true) )
//                      { return true ;}                 
//  if(( x.keyCode < 48 || x.keyCode > 57)||( x.keyCode < 48 || x.keyCode > 57))
//  {  x.value='';
//  return false;
//  }         
// 
// 
//}	
        function printDiv(divName) {
       // alert("print triggerrred");
         var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();
 
     document.body.innerHTML = originalContents;
}
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

          
        
      function z(evt)
   {

    var z=evt.value;
   //alert(z);
   var x=z.replace(/\b./g, function(m){ return m.toUpperCase(); });
  //alert(x);
   evt.value=x;
   }
   
