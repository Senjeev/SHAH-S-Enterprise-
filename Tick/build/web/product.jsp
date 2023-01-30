<%-- 
    Document   : product
    Created on : Oct 29, 2022, 12:03:46 PM
    Author     : 91887
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!--<link rel="stylesheet" href="style.css">-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!--<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <style>
        body{
            background-color:lightblue; 
        }
    </style>
 </head>
 <body>
<div class="container d-flex justify-content-center mt-50 mb-50">
            
        <div class="row">
           <div class="col-md-4 mt-2">
               <form action="PurchaseServ" method="post">

                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">                                            
                                                <img src="https://www.rkmarblesindia.com/wp-content/uploads/2020/09/Italian-Dyna-Marble-4.jpg" class="card-img img-fluid" width="10%" height="20%" alt="">
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value="Asprine"/>
                                                <a class="text-default mb-2" data-abc="true" name="Asprine" value="Asprine">Italian Dyna Marble</a>
                                            </h5>
                                        </div>
                                        <input type="hidden" name="price" value="450">
                                        <input type="hidden" name="userid" value="<%=request.getAttribute('loc')%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹450</h3>
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
                                            
                                                <img src="https://3.imimg.com/data3/YH/OX/MY-1035576/white-marble-500x500.jpg" class="card-img img-fluid" width="20%" height="50%" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value="Asprine"/>
                                                <a href="#" class="text-default mb-2" data-abc="true" name="Asprine" value="Asprine">Asprine</a>
                                            </h5>

                                        </div>
                                        <input type="hidden" name="price" value="400"/>
                                        <input type="hidden" name="userid" value="<%=request.getAttribute("loc")%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹400</h3>
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
                                            
                                                <img src="https://img3.exportersindia.com/product_images/bc-small/2022/1/7449597/marble-floor-tiles-1643626417-6180384.jpeg" class="card-img img-fluid" width="20%" height="50%" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h5 class="font-weight-semibold mb-2">
                                                <input type="hidden" name="proname" value="Asprine"/>
                                                <a href="#" class="text-default mb-2" data-abc="true" name="Asprine" value="Asprine">Asprine</a>
                                            </h5>

                                        </div>
                                        <input type="hidden" name="price" value="66.73"/>
                                        <input type="hidden" name="userid" value="<%=request.getAttribute("loc")%>"/>
                                        <h3 class="mb-0 font-weight-semibold">₹66.73</h3>
                                        Choose the No of Quantity: <input type="number" name="quantity" required/>

                                     

                                        <button type="submit" class="btn bg-cart"><i class="fa fa-cart-plus mr-2"></i>Buy</button>

                                        
                                    </div>
                                </div>
                   
                   </form>
         
           </div>
            
                        
</div> 
     
     


 
     
     
     
     
     
     
     
     <!-- <section class="product">
 <div class="product__photo">
 <div class="photo-container">
 <div class="photo-main">
 
 <img src="https://res.cloudinary.com/john-mantas/image/upload/v1537291846/codepen/delicious-apples/green-apple-with-slice.png" alt="green apple slice">
 </div>
 <div class="photo-album">
 <ul>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537302064/codepen/delicious-apples/green-apple2.png" alt="green apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537303532/codepen/delicious-apples/half-apple.png" alt="half apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537303160/codepen/delicious-apples/green-apple-flipped.png" alt="green apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537303708/codepen/delicious-apples/apple-top.png" alt="apple top"></li>
 </ul>
 </div>
 </div>
 </div>
 <div class="product__info">
 <div class="title">
 <h1>Delicious Apples</h1>
 <span>COD: 45999</span>
 </div>
 <div class="price">
  RS. <span>1500</span>
 </div>
 <div class="variant">
 <h3>SELECT A COLOR</h3>
 <ul>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537302064/codepen/delicious-apples/green-apple2.png" alt="green apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537302752/codepen/delicious-apples/yellow-apple.png" alt="yellow apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537302427/codepen/delicious-apples/orange-apple.png" alt="orange apple"></li>
 <li><img src="https://res.cloudinary.com/john-mantas/image/upload/v1537302285/codepen/delicious-apples/red-apple.png" alt="red apple"></li>
 </ul>
 </div>
 <div class="description">
 <h3>BENEFITS</h3>
 <ul>
 <li>Apples are nutricious</li>
 <li>Apples may be good for weight loss</li>
 <li>Apples may be good for bone health</li>
 <li>They're linked to a lowest risk of diabetes</li>
 </ul>
 </div>
 <button class="buy--btn">ADD TO CART</button>
 </div>
</section>-->
</body>
</html>