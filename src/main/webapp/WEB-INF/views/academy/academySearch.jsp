<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/static/css/academy/style.css">    
<link rel="stylesheet" href="/static/css/academy/bootstrap.css">
<link rel="stylesheet" href="/static/css/academy/main.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->

 
 <!-- js -->
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
-->
    <script src="/static/js/academy/academySearch.js"></script> 

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
   
     <meta charset="UTF-8">
 
 <script type="text/javascript">
    
  $(function() {
                 
         var contextPath = "${contextPath}";
        
          $.ajax({
               url : contextPath + "/api/academyList",
                method : "get",
                dataType : "json",
                success: function(json) {
                console.log(json);
                
                var dataLength = json.length;
                console.log(json[0].acaNm)
                var list = "";
                 console.log(json[0].acaIdx)
                   for(i= 0 ; i < dataLength; i++){
                   
                                 list = "";
                         
                                 list+='<div class="product_itme1 col-md-4 card bg-light" data-type="daugu" style="display:flex; flex-direction:row; margin-top:10px;border-radius:5px;">';
                                 list+=		'<div class="row col-md-12">';
                                 list+=			'<div class="col-md-4" >';
                                 list+=				'<div class= "aca-img card-img" style="display:flex; align-items:center; width:100%; height:calc( 100% - 20px );background-color:#e2e2e2; margin:10px 0;">';
                                 list+=				'</div>';
                                 list+=			'</div>';
                                 list+=			'<div class="product_item col-md-8 card-body" id="opener" style="height:200px; ">';
                                 list+=			'<div class="card-title" style="height:33%; display:flex; align-items: center; justify-content: center;">';
                                 list+=				'<a href="${contextPath}/lectureAcademyDetailView/' +json[i].acaIdx+ '">' + json[i].acaNm + '</a>';
                                 list+=				'</div>';
                                 list+=				'<div class="card-text" style="height:33%; display:flex; align-items: center; justify-content: center;">';
                                 list+=					json[i].faRdnma;
                                 list+=				'</div>';
                                 list+=				'<div class="card-text" style="height:33%; display:flex; align-items: center; justify-content: center;">';
                                 list+=					json[i].fieldName;
                                 list+=				'</div>';
                                 list+=			'</div>';
                                 list+=		'</div>';
                                 list+='</div>';
                      
   
                            $("#product-list-wrap").append(list);
                   }
             
                    
                   
                 
                }
 

         })   
        
    

               
   })

             
                    

                
                  
            /*       $(this).on('click','[id=btnSubject]', function (){
                          
                          var b = $(this).parent().parent().text();
                          console.log("지역선언==>" + b);
                          
                          var contextPath = "${contextPath}";
                          
                          if(b === "미술"){
                           
                           console.log("hi");
                              
                        }
                   
          
            
                   } */
            
  
      
   
       
   
        /*     $.ajax({
               url : contextPath + "/api/academyList",
                method : "get",
                dataType : "json",
                success: function(json) {
                console.log(json);
                
                var dataLength = json.length;
                var list = "";
                 
                   for(i= 0 ; i <= dataLength-800; i++){
                   
                      
                         
                          list += '<div class="product_item1 col-md-4" data-type="daugu">';
                            list += '<div class="product_item" id="opener">';
                            list += '<div class="pi-img-wrapper"  >';
                            list += '<img src="/static/img/building-6780404_1280.png" class="img-responsive" alt="Berry Lace Dress" style="width:50%;" >';
                            list += '</div>';
                            list += '<h3><a href="shop-item.html"><h1>'+ json[i].acaNm + '</h1></a></h3>';
                            list += '<div class="pi-price">' + json[i].faRdnma +'</div>';
                            list += '</div>';
                            list += '</div>';
                            list += '</div>';
                      
                         
                             $("#product-list-wrap").empty();
                       $("#product-list-wrap").append(list);
                       
                 
                   }

                   
               
                }
            
     
               })     */


   
   

</script>

    <%@include file="/WEB-INF/views/header.jsp"%>
    
       <section id="introLA">
        <div class="search-list-wrap" >
            <div class="row col-md-12 ">

                <div class="search-left col-md-3 ">
                    <div class="sidebar-categories ">
                        <div class="head">대구</div>
                        <ul class="main-categories" >
                            <li class="main-nav-list" data-filter="daugu" >
                            	<span class="lnr lnr-arrow-right area">
                            		<input class="main-nav-list child" id="btnArea" type="radio" name="area" >
                            	</span>
                            	남구
                            	</li>
                            <li class="main-nav-list" data-filter="daugu"  ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio" name="area"></span>달서구</li>
                            <li class="main-nav-list" data-filter="daugu"   ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio" name="area"></span>동구</li>
                            <li class="main-nav-list" data-filter="daugu" ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio" name="area"></span>북구</li>
                            <li class="main-nav-list" data-filter="daugu"  ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio" name="area"></span>서구</li>
                            <li class="main-nav-list" data-filter="daugu"  ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio" name="area" ></span>수성구</li>
                            <li class="main-nav-list" data-filter="daugu" ><span class="lnr lnr-arrow-right area" ><input class="main-nav-list child" id="btnArea" type="radio"name="area"></span>중구</li>
                        </ul>
                    </div>
                    
                    <div class="sidebar-categories ">
                        <div class="head">과목</div>
                        <ul class="main-categories" >

                             <li class="main-nav-list" data-filter="daugu" ><span class="lnr lnr-arrow-right sub" ><input class="main-nav-list child" id="btnSubject" name="subject" type="radio"></span>미술</li>
                             <li class="main-nav-list" data-filter="daugu"><span class="lnr lnr-arrow-right" ><input class="main-nav-list child" id="btnSubject" name="subject" type="radio"></span>보습</li>
                             <li class="main-nav-list" data-filter="daugu" ><span class="lnr lnr-arrow-right" ><input class="main-nav-list child" id="btnSubject" name="subject" type="radio"></span>음악</li>
                           
                        </ul>
                    </div>
                    
                </div>

                <div class="search-right col-md-9">

                    <div class=" search-table-wrap row col-md-12">
                        <!--강의시간표 이름-->
                        <div class="search-table-title">
                            <h1>시간표 보기</h1>
                        </div>
                     

                        
                        <!-- 강의시간표 담기 및 분류방법-->
                        <div class="go-to-category col-md-12">

                            <div class="go-wishlist">
                                <a href="./wishlist.html">시간표 담기</a>
                            </div>

                        </div>
                        <div class="pull-right col-md-2 ">
                            <label class="control-label">Show:</label>
                            <select class="form-control input-sm">
                                <option value="#?limit=24" selected="selected">24</option>
                                <option value="#?limit=25">25</option>

                            </select>
                        </div>
                        <div class="pull-right col-md-2">
                            <label class="control-label">분류&nbsp;:</label>
                            <select class="form-control input-sm">
                                <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                                <option value="#?sort=pd.name&amp;order=ASC">최신순</option>
                                <option value="#?sort=pd.name&amp;order=DESC">리뷰순</option>

                            </select>
                        </div>
                        <!--상품리스트 시작-->
                        <div class="product_list row col-md-12" id="product-list-wrap">
                            <!-- PRODUCT ITEM START -->


                        </div>


                        <!-- PRODUCT ITEM END -->


                        <!-- product item script-->

                        <!-- END PRODUCT LIST -->




                        <!-- 아이템 페이지 컨트롤  -->
                        <div class="col-md-7">


                            <ul class="pagination pull-right ">
                                <li><a href="javascript:;">&laquo;</a></li>
                                <li><a href="javascript:;">1</a></li>
                                <li><a href="javascript:;">2</a></li>
                                <li><a href="javascript:;">3</a></li>
                                <li><a href="javascript:;">4</a></li>
                                <li><a href="javascript:;">5</a></li>
                                <li><a href="javascript:;">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- END PAGINATOR -->
                </div>



            </div>
            <!-- END CONTENT -->




        <!-- END SIDEBAR & CONTENT -->

        <!-- Fonts START -->



        <!-- Fonts END -->
       
       
    
        

   </section>
    </body>
    <%@include file="/WEB-INF/views/footer.jsp"%>