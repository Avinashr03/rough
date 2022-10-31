<%-- 
    Document   : Quizfrom
    Created on : 20-Oct-2022, 3:28:41 am
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <META HTTP-EQUIV="REFRESH" CONTENT="90;URL='LogoutFailed.jsp'"/>        
        <title>JSP Page</title>
        <style>
            .question1{
                display:none;
            }
            .question2{
                display:none;
            }
            .question3{
                display:none;
            }
            #time{
                display:none;
            }
            #finalsubmit{
                display:none;
            }
            #bc{
                display:none;
            }
            #nex{
                display:none;
            }
            #pre{
                display:none;
            }
            .center {
                margin: auto;
                width: 60%;
                border: 3px solid #73AD21;
                padding: 15px;
              }
        </style>
        <script>
            const finalans=[];
            var id=0;
            var id1=0;
            var arr=[];
            <%! static int num=1;%>
                let timeout;
                var stopwatch=1;
                var min=0;
                function finalcheck(){
                    alert("finished");
                }
         function Myrand(max,min){

            for (i = 0; i < max; i++) {
                x = Math.floor( Math.random() * max) + min;
                if(arr.includes(x) == true){
                    i=i-1;
                }else{
                    if(x>max==false){
                        arr.push(x);
                    }
                }
            }
//            alert(arr[0]);
        }       
        function start(){
            var st= document.getElementsByClassName("question"+arr[id]);
            var stopwatch=1;
            st[0].style.display="block";
            var st1= document.getElementById("st1");
            st1.style.display="none";
            document.getElementById("nex").style.display="block";
            document.getElementById("pre").style.display="block";

            var st2= document.getElementById("time");
            st2.style.display="block";
        }
        function beforecheck(){

            var ele2=document.getElementsByName("q"+arr[0]);
            for(i = 0; i < ele2.length; i++) {
                        if(ele2[i].checked)
                        finalans[0]=ele2[i].value;
                    }
             var ele3=document.getElementsByName("q"+arr[1]);
            for(i = 0; i < ele3.length; i++) {
                        if(ele3[i].checked)
                        finalans[1]=ele3[i].value;
                    }
             var ele4=document.getElementsByName("q"+arr[2]);
            for(i = 0; i < ele4.length; i++) {
                        if(ele4[i].checked)
                        finalans[2]=ele4[i].value;
                    }
            document.getElementById("ques1").value=finalans[0];
            document.getElementById("ques2").value=finalans[1];
            document.getElementById("ques3").value=finalans[2];
            document.getElementById("ques1no").value=arr[0];
            document.getElementById("ques2no").value=arr[1];
            document.getElementById("ques3no").value=arr[2];
             var z2= document.getElementsByClassName("question"+arr[2]);
            z2[0].style.display="none";

           document.getElementById("finalsubmit").style.display="block";
           document.getElementById("nex").style.display="none";
           document.getElementById("pre").style.display="none";
           document.getElementById("bc").style.display="none";
//                    alert(document.getElementById("ques1no").value);

        }
        function next() {

           var ele = document.getElementsByName("q"+arr[id]);

                    for(i = 0; i < ele.length; i++) {
                        if(ele[i].checked)
                        finalans[id]=ele[i].value;
                    }
//                    alert(finalans);

            var x= document.getElementsByClassName("question"+arr[id]);
            x[0].style.display="none";
            id=id+1;

            <% num=num+1;%>
            if(id!=3){
            var y= document.getElementsByClassName("question"+arr[id]);
             y[0].style.display="block";
         }
         else{
             alert("Please verify with answer is correct or not. Incase you wish to change answer");
             document.getElementById("bc").style.display="block";
                alert(arr);
                id=id-1;

             var z1= document.getElementsByClassName("question"+arr[id]);
            z1[0].style.display="block";
            }
        }
        
        function end(){
         timeout = setTimeout(change, 1000);
        }
        
        function change(){

            document.getElementById("time").innerHTML=min+":"+(stopwatch+1);
            stopwatch=stopwatch+1;
            if(stopwatch==60){
             stopwatch=0;
             min=min+1;
            }
            end();

        }
        function prev(){

            var x= document.getElementsByClassName("question"+arr[id]);
            x[0].style.display="none";
            id=id-1;
            if(id!=-1){
             var y= document.getElementsByClassName("question"+arr[id]);
             y[0].style.display="block";}
         else{
             alert("Nopage");
             id=id+1;
             var z= document.getElementsByClassName("question"+arr[id]);
            z[0].style.display="block";
         }

        }
        </script>
    </head>
    <body>
        <jsp:include page="nav.jsp" flush="true" />
        <% String text=(String)request.getAttribute("username");%>
        <div id="result"></div>
        <strong>
            <h3 style="text-align: right; color: red;">On Time Screen</h3>
            <h2 id="time" style="text-align: right; color: red;">00:00</h2>
        </strong>
        
        <form action="Validate1" method="get">
            <input type="hidden" name="name" value="<%=text%>">
            <input type="hidden" id="ques1" name="ques1" value="">
            <input type="hidden" id="ques2" name="ques2" value="">
            <input type="hidden" id="ques3" name="ques3" value="">
            <input type="hidden" id="ques1no" name="ques1no" value="">
            <input type="hidden" id="ques2no" name="ques2no" value="">
            <input type="hidden" id="ques3no" name="ques3no" value=""> 
            <input id="finalsubmit" type="submit" class="btn" style="align-text: center;">
        </form>
            <div class="center">
                <p style="font-family: sans-serif; font-size: 20px;">Click to Start Now:</p>
                <input id="st1" type="button" class="btn" onclick="Myrand(3,1); start(); end(); " value="Start">
        
        <div class="question1">
            <h3>Full Form of JSP</h3>
            <input type="radio" name="q1" value="Java Server Page">Java Server Page<br>
            <input type="radio" name="q1" value="Java Server-Client Page">Java Server-Client Page
            <input type="hidden" name="ques" value="<%=num%>">
        </div>
                
        <div class="question2">
            <h3>How many types of JSP Scripting elements</h3>
            <input type="radio" name="q2" value="2 types">2 Types<br>
            <input type="radio" name="q2" value="3 types">3 Types
            <input type="hidden" name="ques" value="<%=num+1%>">
        </div>
        
        <div class="question3">
            <h3>Full Form of HTML: </h3>      
            <input type="radio" name="q3" value="Hypertext Markup Language">Hypertext Markup Language<br>
            <input type="radio" name="q3" value="Highpertext Markup Language">Highpertext Markup Language
            <input type="hidden" name="ques" value="<%=num+1%>">
        </div>

        <button id="nex" onclick="next()" class="btn">Next</button>
        <button id="pre" onclick="prev()" class="btn">Back</button>
        <button id="bc" onclick="beforecheck()" class="btn">Validate and View Result</button>
        
        <p id="demo"></p> 
        </div>
    </body>
</html>