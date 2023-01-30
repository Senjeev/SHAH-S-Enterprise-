<%-- 
    Document   : productview1
    Created on : 17-Oct-2022, 7:08:01 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!--<link rel="stylesheet" href="productview1.css">-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
        <title>Product View Page</title>
    </head>
    <body style="background-color:#666666;background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
        <div class="container d-flex justify-content-center mt-50 mb-50">
            
        <div class="row">
           <div class="col-md-4 mt-2">
               <form action="PurchaseServ" method="post">

                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ43-Li9H04fmm3tH6RMxqzFdiSkiFFUdwch0XWIF60rOlzX-iZKdWlTVhL&s=10" class="card-img img-fluid" width="20%" height="50%" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value=" Alask white"/>
                                                <a href="#" class="text-default mb-2" data-abc="true" name=" Alask white" value=" Alask white"> Alask white</a>
                                            </h5>

                          
                                        </div>
                                        <input type="hidden" name="price" value="150"/>
                                        <input type="hidden" name="userid" value="<%=request.getAttribute("loc")%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹150</h3>
                                        Choose the No of Quantity: <input type="number" name="quantity"  required/>
                                        <button type="submit" class="btn bg-cart"><i class="fa fa-cart-plus mr-2"></i>Buy</button>

          
                                    </div>
                                </div>
                   
                   </form>
         
           </div> 


           <div class="col-md-4 mt-2">
               <form action="PurchaseServ" method="post">

                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyafdG-aASxXzVD6vYKgL8noyraS1PiGgV_A&usqp=CAU" class="card-img img-fluid" width="20%" height="50%" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value="Imperial gold"/>
                                                <a href="#" class="text-default mb-2" data-abc="true" name="Imperial gold" value="Imperial gold">Imperial gold</a>
                                            </h5>

                                      
                                        </div>
                                        <input type="hidden" name="price" value="110"/>
                                        <input type="hidden" name="userid" value="<%=request.getAttribute("loc")%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹110</h3>
                                        Choose the No of Quantity: <input type="number" name="quantity" required/>
                                        <button type="submit" class="btn bg-cart"><i class="fa fa-cart-plus mr-2"></i>Buy</button>

                                        
                                    </div>
                                </div>
                   
                   </form>             
                             
           </div> 

           <div class="col-md-4 mt-2">
               <form action="PurchaseServ" method="post">

                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                                <img src="https://5.imimg.com/data5/MD/OH/MY-1946370/copper-silk-500x500.jpg" class="card-img img-fluid" width="20%" height="50%" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value="copper silk granite"/>
                                                <a href="#" class="text-default mb-2" data-abc="true" name="copper silk granite" value="copper silk granite">copper silk granite</a>
                                            </h5>
                                        </div>
                                        <input type="hidden" name="price" value="350"/>
                                        <input type="hidden" name="userid" value="<%=request.getAttribute("loc")%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹350</h3>
                                        Choose the No of Quantity: <input type="number" name="quantity"  required/>


                                        <button type="submit" class="btn bg-cart"><i class="fa fa-cart-plus mr-2"></i>Buy</button>

                                        
                                    </div>
                                </div>
                   
                   </form>             
                             
           </div> 


           


            

        </div>
    </div>
    </body>
</html>
