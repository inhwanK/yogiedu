<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<%@include file="/WEB-INF/views/header.jsp"%>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/static/css/academy/style.css">
<link rel="stylesheet" href="/static/css/academy/bootstrap.css">
<link rel="stylesheet" href="/static/css/academy/main.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->


<!-- js -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/static/js/academy/academySearch.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<meta charset="UTF-8">

<body>

    <script type="text/javascript">
        $(function() {

            var contextPath = "${contextPath}";
            var notIdx = "${notIdx}";


            $.ajax({
                url: contextPath + "/api/academyList",
                method: "get",
                dataType: "json",
                success: function(json) {
                    console.log(json);

                    var dataLength = json.length;
                    var list = "";


                    $("#academy-name").append(json[0].acaNm);
                    $("#academy-area").append(json[0].faRdnma);

                    for (i = 0; i <= dataLength - 248; i++) {


                        list += '<div class="product_item1 col-md-4" data-type="daugu">';
                        list += '<div class="product_item" id="opener">';
                        list += '<div class="pi-img-wrapper"  >';
                        list += '<img src="/static/img/building-6780404_1280.png" class="img-responsive" alt="Berry Lace Dress" style="width:50%;" >';
                        list += '<div id="academy-name">';
                        list += '</div>';
                        list += '<h3><a href="shop-item.html"><h1>' + json[i].acaNm + '</h1></a></h3>';
                        list += '<div class="pi-price">' + json[i].faRdnma + '</div>';
                        list += '</div>';
                        list += '</div>';
                        list += '</div>';





                    }
                    console.log(list);
                    $("#product-list-wrap").append(list);
                }
            })
        })
    </script>

    <body>
    	<section id="introLA">
        <div class="search-list-wrap" >
            <div class="row col-md-12 ">

                <div class="search-left col-md-3 ">
                    <div class="sidebar-categories ">
                        <div class="head">area</div>
                        <ul class="main-categories">
                            <li class="main-nav-list" data-filter="daugu"><a data-toggle="collapse" href="#fruitsVegetable" aria-expanded="false" aria-controls="fruitsVegetable"><span class="lnr lnr-arrow-right"></span>대구</a>
                                <ul class="collapse daegu" id="fruitsVegetable" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
                                    <li class="main-nav-list child "><a href="#" data-filter="a">동구</span></a></li>
                                    <li class="main-nav-list child "><a href="#" data-filter="b">서구</span></a></li>
                                    <li class="main-nav-list child "><a href="#" data-filter="c">남구</span></a></li>
                                    <li class="main-nav-list child"><a href="#">북구</span></a></li>

                                    <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                </ul>
                            </li>

                            <li class="main-nav-list"><a data-toggle="collapse" href="#meatFish" aria-expanded="false" aria-controls="meatFish"><span class="lnr lnr-arrow-right"></span>울산<span class="number">(1)</span></a>
                                <ul class="collapse" id="meatFish" data-toggle="collapse" aria-expanded="false" aria-controls="meatFish">
                                    <li class="main-nav-list child"><a href="#">동구</span></a></li>
                                    <li class="main-nav-list child"><a href="#">서구</span></a></li>
                                    <li class="main-nav-list child"><a href="#">남구</span></a></li>
                                    <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                    <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                                </ul>
                            </li>

                            <li class="main-nav-list"><a data-toggle="collapse" href="#cooking" aria-expanded="false" aria-controls="cooking"><span class="lnr lnr-arrow-right gwangju"></span>광주<span class="number"></span></a>
                                <ul class="collapse" id="cooking" data-toggle="collapse" aria-expanded="false" aria-controls="cooking">
                                    <li class="main-nav-list child"><a href="#">1학년</span></a></li>
                                    <li class="main-nav-list child"><a href="#">2학년</span></a></li>
                                    <li class="main-nav-list child"><a href="#">3학년</span></a></li>
                                    <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                                </ul>
                            </li>
                            </li>

                            <li class="main-nav-list"><a class="border-bottom-0" data-toggle="collapse" href="#babyCare" aria-expanded="false" aria-controls="babyCare"><span class="lnr lnr-arrow-right"></span>기타<span class="number">(48)</span></a>
                                <ul class="collapse" id="babyCare" data-toggle="collapse" aria-expanded="false" aria-controls="babyCare">
                                    <li class="main-nav-list child"><a href="#">구미<span class="number">(13)</span></a></li>
                                    <li class="main-nav-list child"><a href="#">청도<span class="number">(09)</span></a></li>
                                    <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                    <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                    <li class="main-nav-list child"><a href="#" class="border-bottom-0">Meat<span class="number">(11)</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar-filter mt-50 ">
                        <div class="top-filter-head">info</div>
                        <div class="common-filter">
                            <div class="head">grade</div>
                            <form action="#">
                                <ul>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">초등학생<span>(29)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">중학생<span>(29)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">고등학생<span>(19)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">일반인<span>(19)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">기타<span>(19)</span></label></li>
                                </ul>
                            </form>
                        </div>
                        <div class="common-filter">
                            <div class="head">subject</div>
                            <form action="#">
                                <ul>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">국어<span>(29)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">영어
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">수학
                                            with red<span>(19)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">예체능<span>(19)</span></label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">기타<span>(19)</span></label></li>
                                </ul>
                            </form>
                        </div>

                    </div>
                </div>

                <div class="search-right col-md-9">

                    <div class=" search-table-wrap row col-md-12">
                        <!--강의시간표 이름-->
                        <div class="search-table-title">
                            <h1>시간표 보기</h1>
                        </div>
                        <!-- 강의시간표-->
                        <table class="search-table col-md-12">
                            <th></th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                            <tr>
                                <td class="time">
                                    3-4
                                </td>
                                <td id="col1-1"></td>
                                <td id="col1-2"></td>
                                <td id="col1-3"></td>
                                <td id="col1-4"></td>
                                <td id="col1-5"></td>
                                <td id="col1-6"></td>
                                <td id="col1-7"></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    4-5
                                </td>
                                <td id="col2-1"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td id="col2-7"></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    5-6
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    6-7
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    7-8
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    8-9
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="time">
                                    9-10
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>




                        </table>
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

            <!--dialog 페이지-->
        </div>
        <div id="dialog">
            <div class="col-md-12 col-sm-7">
                <div class="product-page">
                    <div class="row">

                        <div class="intro-academy col-md-12 col-sm-10">
                            <div>#고3 전문 </div>
                            <h1>a학원</h1>

                        </div>

                    </div>
                </div>



            </div>

            <div class="product-page-content">
                <ul id="myTab" class="nav nav-tabs">
                    <li><a href="#Description" data-toggle="tab">강의검색</a></li>
                    <li><a href="#Information" data-toggle="tab">강사소개</a></li>
                    <li><a href="#Reviews" data-toggle="tab">리뷰 (2)</a></li>
                </ul>

                <div class="tab-pane fade" id="Description">


                    <!-- 상품 진열대 -->
                    <div class="academy-lecture-wrap row col-md-12">
                        <div id="goods" class="col-md-8">

                            <div class="good">
                                <table class="col-md-12">
									<colgroup>
				                        <col style="width:20%;">
				                        <col style="width:20%;">
				                        <col style="width:20%;">
				                        <col style="width:40%;">
									</colgroup>
	                 			    <thead>
	                                	<tr>
		                                    <th scope="col" class="col-md-3">과목</th>
		                                    <th scope="col" class="col-md-3">과목명</th>
		                                    <th scope="col" class="col-md-3">시간</th>
		                                    <th scope="col" class="col-md-3">강사명</th>
	                                    </tr>
                                    </thead>
                                    <tbody>
	                                    <tr>
	                                        <td class="subject_name col-md-3">국어</td>
	                                        <td class="subject_name_detail col-md-3">국어1</td>
	                                        <td class="subject_time col-md-3">3-4</td>
	                                        <td class="subject_teacher col-md-3 ">김인환
	                                            <button type="button" title="과목 담기" class="btn_add1">과목 담기</button>
	                                        </td>
	                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>


                        <!-- 장바구니 -->

                        <div id="cart" class="col-md-4">
                            <table class="basic col-md-12" border="0" cellspacing="0" cellpadding="0">
                                <tr bgcolor="#C8E3FF">
                                    <th scope="col">과목</th>
                                    <th scope="col">강사</th>
                                    <th scope="col">대상</th>
                                    <th scope="col">시간</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                            </table>

                            <div id="show_total">

                            </div>
                            
                            <div id="buy">
                                <button type="button" title="구매하기" id="btn_buy">수강 시간표 넣기</button>
                            </div>
                            
                        </div>

                    </div>


                    <!-- 총금액 -->



                </div>

                <div class="tab-pane fade" id="Information">
                </div>
                <div class="tab-pane fade" id="Reviews">
                    <!--<p>There are no reviews for this product.</p>-->
                    <div class="review-item clearfix">
                        <div class="review-item-submitted">
                            <strong>Bob</strong>
                            <em>30/12/2013 - 07:37</em>
                            <div class="rateit" data-rateit-value="5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                        </div>
                        <div class="review-item-content">
                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                        </div>
                    </div>

                    <!-- BEGIN FORM-->
                    <form action="#" class="reviews-form" role="form">
                        <h2>Write a review</h2>
                        <div class="form-group">
                            <label for="name">Name <span class="require">*</span></label>
                            <input type="text" class="form-control" id="name">
                        </div>

                        <div class="form-group">
                            <label for="review">Review <span class="require">*</span></label>
                            <textarea class="form-control" rows="8" id="review"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="email">Rating</label>
                            <input type="range" value="4" step="0.25" id="backing5">
                            <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false" data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                            </div>
                        </div>
                        <div class="padding-top-20">
                            <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>





        <!-- END SIDEBAR & CONTENT -->

        <!-- Fonts START -->



        <!-- Fonts END -->
	</section>
    </body>
    <%@include file="/WEB-INF/views/footer.jsp"%>