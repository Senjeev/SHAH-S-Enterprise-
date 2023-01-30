<%-- 
    Document   : Successmsg
    Created on : 16-Oct-2022, 11:23:05 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .container {
                font-family: arial;
                font-size: 24px;
                margin: 20px;
                width: 60%;
                height: 90%;
                /* Setup */
                position: relative;
              }

              .child {
                width: 100%;
                height: 80%;
                /*background-color: red;*/
                /* Center vertically and horizontally */
                position: absolute;
                top: 50%;
                left: 50%;
                margin: 100px 0 0 -180px; /* Apply negative top and left margins to truly center the element */
              }
              .boxcontainer{
                background: rgba(190,185,182,0.4);
                box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
                backdrop-filter: blur( 14.5px );
                -webkit-backdrop-filter: blur( 14.5px );
                border-radius: 10px;
                border: 1px solid rgba( 255, 255, 255, 0.18 );
                padding: 25px;
            }
            .button {
                background-color:#ff00ff;
                border: none;
                color: white;
                padding: 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 6px 4px;
                cursor: pointer;
               
              }
              button:hover{
                  color:activeborder; 
              }
             img {
                height:200px;
                width:200px; 
             }
             h1,h3{
                 font-family:Roboto; 
             }
        </style>
    </head>
    <body style="background-image: url('https://c4.wallpaperflare.com/wallpaper/866/795/795/light-grey-curves-wallpaper-preview.jpg'); background-repeat: no-repeat; background-size: 100%">
        <div class="container">
            <div class="child">
                <div class="boxcontainer">
                    <center>
                        <img src="https://merchant.razer.com/v3/wp-content/uploads/2017/03/seamless-step5.svg" alt="Italian Trulli">
                        <h1>Payment completed </h1>
                        <h3>Thanks For Visiting Us </h3>
                        <a href="Home.jsp"><button style="border-radius: 12px;" class="button">Back to home</button></a>
                                          </center>
                </div>
            </div>  
        </div>
    </body>
</html>
