<%-- 
    Document   : payment1
    Created on : 17-Oct-2022, 8:56:16 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div.style{
                margin-top:10px; 
                background-color:lightblue; 
            }
            
            .center {
                margin: auto;
                width: 60%;
                /* border: 3px solid #73AD21; */
                padding: 40px;
              }

            /* Copyright 2020 Google LLC.SPDX-License-Identifier: Apache-2.0 */
            :root {
              --small-mobile-font-size: 20px;
              --large-mobile-font-size: 22px;
              --desktop-font-size: 18px;
            }

            body {
              font-family: sans-serif;
              font-weight: 300;
              margin: 20px 10px 0 10px;
              background-image:url("https://images.unsplash.com/photo-1593182440959-9d5165b29b59?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80"); 
            }

            button {
              background-color: black;
              border: 1px solid #ccc;
              border-radius: 2px;
              color: #eee;
              cursor: pointer;
              display: block;
              font-size: 20px; /* fallback */
              font-size: var(--large-mobile-font-size);
              font-weight: 400;
              margin: 3px 0 0 0;
              padding: 14px;
            }

            button:disabled {
              color: #888;
              cursor: default;
            }

            button:not(:disabled):hover {
              background-color: #333;
              color: white;
            }

            div.explanation {
              font-size: 14px;
              margin: 10px 0 0 0;
            }

            section#cc-exp-csc div:not(:last-child) {
              margin: 0 10px 0 0;
            }

            h1 {
              border-bottom: 1px solid #ccc;
              font-size: 28px;
              font-weight: 300;
              margin: 0 0 30px 0;
              padding: 0 0 10px 0;
            }

            input {
              border: 1px solid #ccc;
              font-size: 22px; /* fallback */
              font-size: var(--large-mobile-font-size);
              padding: 8px;
              width: 90%; /* fallback */
              width: calc(100% - 30px); /* full width minus padding */
            }

            input:not(:focus):invalid,
            input:not(:focus):invalid {
              color: red;
              outline-color: red;
            }

            label {
              display: block;
              font-size: 20px;
              font-size: var(--large-mobile-font-size);
              font-weight: 400;
              margin: 0 0 8px 0;
            }

            main {
              margin: 0 auto;
              max-width: 500px;
            }

            p {
              font-size: 19px;
              font-weight: 400;
            }

            form section {
              margin: 0 0 15px 0;
              position: relative;
            }

            form section:last-of-type {
                margin: 0 0 25px 0;
            }

            section#cc-exp-csc {
              display: flex;
              justify-content: space-between;
            }

            section#exp-csc select#cc-exp-month {
              margin: 0 10px 0 0;
              width: 67px;
            }

            section#exp-csc select#cc-exp-year {
              width: 99px;
            }

            select {
              background-color: white;
              border: 1px solid #ccc;
              font-size: var(--mobile-font-size);
              padding: 15px 15px 15px 11px;
              width: 100%; /* don't need to account for padding :/ */
            }

            @media (min-width: 400px) {
              body {
                margin: 40px 20px 0 20px;
              }
              button {
                font-size: 20px; /* fallback */
                font-size: var(--large-mobile-font-size);
              }
              div.explanation {
                font-size: 16px;
                background-color:lightyellow; 
              }
              h1 {
                font-size: 36px;
                font-weight: 500;
                margin: 0 0 60px 0;
                background-color:lightpink;  
              }
              input {
                font-size: 10px; /* fallback */
                font-size: var(--large-mobile-font-size);
              }
              label {
                font-size: 22px; /* fallback */
                font-size: var(--large-mobile-font-size);
                margin: 0 0 10px 0;
              }
              p {
                font-weight: 300;
              }
              form section {
                margin: 0 0 40px 0;
              }
              form section:last-of-type {
                margin: 0 0 60px 0;
              }
            }

            @media (min-width: 500px) {
              body {
                margin: 70px 70px 0 70px;
              }
              button {
                font-size: 18px; /* fallback */
                font-size: var(--desktop-font-size);
              }
              section#cc-exp-csc div:not(:last-child) {
                margin: 0 20px 0 0;
              }
              h1 {
                font-size: 36px;
                font-weight: 100;
              }
              input {
                font-size: 18px; /* fallback */
                font-size: var(--desktop-font-size);
              }
              label {
                font-size: 18px; /* fallback */
                font-size: var(--desktop-font-size);
                margin: 0 0 10px 0;
              }
              form section {
                  margin: 0 0 35px 0;   
              }
            }


        </style>
    </head>
      
      <body>
        <% String val = (String) request.getAttribute("QUANT"); 
        System.out.println(val);
            Integer val_int = Integer.valueOf(val);
            String p = (String) request.getAttribute("PRICE"); 
            Float p_int = Float.valueOf(p);
            Integer res = Math.round(p_int * val_int);
        %>

        <form action="Successmsg.jsp" method="post">
            <div class="center">
                <div class="boxcontainer">
                    <h1>Payment product details</h1>
                    <div class="style"><h3>Product Name:&nbsp;&nbsp;&nbsp;<strong><%=request.getAttribute("PROD") %></strong></h3>
                    <h3>Product Price:&nbsp;&nbsp;&nbsp;&nbsp;<strong><%=request.getAttribute("PRICE") %></strong></h3>
                    <h3>Total Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₹<strong><%=res%></strong></h4></div>
                    <input type="hidden" name="proname" value="<%=request.getAttribute("PROD")%>"/>
                    <input type="hidden" name="price" value="<%=res%>"/>
                    <input type="hidden" name="userid" value="<%=request.getAttribute("USER")%>"/>
                    <br><br><br><br>
                    
                    <h1>Payment portal</h1>

                    <section>
                      <label for="cc-number">Card number</label>
                      <input id="cc-number" name="cc-number" autocomplete="cc-number" inputmode="numeric" pattern="[\d ]{16}" required>
                    </section>

                    <section>
                      <label for="cc-name">Name on card</label>
                      <input id="cc-name" name="cc-name" autocomplete="cc-name" pattern="[\p{L} \-\.]+" required>
                    </section>

                    <section id="cc-exp-csc">
                      <div>
                        <label for="cc-exp">Expiry date</label>
                        <input id="cc-exp" name="cc-exp" autocomplete="cc-exp" placeholder="MM/YY" maxlength="5" required>
                      </div>
                      <div>
                        <label for="cc-csc" style="background-color:yellow">Security code</label>
                        <input id="cc-csc" name="cc-csc" autocomplete="cc-csc" inputmode="numeric" maxlength="3" required>
                        <div class="explanation">Back of card, last 3 digits</div>
                      </div>
                    </section>
                    
                    <input id="complete-payment" type="submit" value="Continue to Pay"/>
                </div>
            </div>
        </form>
    </body>
</html>

