
$( function() {
    $( "#dialog" ).dialog({
    autoOpen: false,
    show: {
        effect: "fade",
        duration: 1000,
        
        
    },
    hide: {
        effect: "fade",
        duration: 1000
        
    },
   width: 2000,
   height: 1200
});
if ($(".search-table-wrap").width() <800){
        
        $("#dialog").dialog({
          width: 100
        })
    }

    $( "#opener" ).on( "click", function() {
    $( "#dialog" ).dialog( "open");
    });
} ); 




                          const area_click = document.querySelector(".main-categories");                  
                          const productContainer = document.querySelector(".product_list");
                          const products = document.querySelectorAll(".product_item1");
    
                          area_click.addEventListener("click", () => {
                            const filter =
                            event.target.dataset.filter || event.target.parentNode.dataset.filter;
                          
                          if(filter == null){
                            return;
                          }
    
                          productContainer.classList.add('anim-out');
                            setTimeout(() => {
                              for(let i = 0 ; i < products.length; i++){
                                product_item = products[i];
                              }
    
                              if (filter === '*' || filter === product_item.dataset.type) {
                                product_item.classList.remove('invisible');
                              } else {
                                product_item.classList.add('invisible');
                                  }
    
                          
                          });
                          });
                        
    
////상품 담기 + 상품 삭제 
$(document).ready(function(e) {
  var total = 0;
 
 //상품 담기 리스트
  $('.subject_teacher > button').click(function(e) {
  var btnName =  $(this).get(0).className;
  console.log(btnName);
  var $tagGood;
   
  switch (btnName) {
    case "btn_add1":
      

      $tagGood = $('<tr align="center" class="good1"></tr>')
      .append('<td>고등국어</td>')
      .append('<td>김인환</td>')
      .append('<td>고3</td>')
      .append('<td>3-4</td>')
      .append('<td><button type="button" title="삭제" class="btn_del">삭제</button></td>');
      
      total = total +1;
      
    break;
  }	
  $('#cart .basic').append( $tagGood );
  $('#show_total').empty().append( "총 수강 개수:" + total + "개"  );
  console.log($tagGood);
  
  
  
  
  });
  //삭제 기능
  $('.basic').click(function(e) {
    if (e.target.className == 'btn_del') {
      var good = $(e.target).parents('tr');
      switch (good.get(0).className) {
        case "good1":
          total = total - 1;
        break;
        case "good2":
          total = total - 1;
        break;
        case "good3":
          total = total - 1;
        break;
        case "good4":
          total = total - 1;
        break;
      }
      good.remove();
      
     
      $('#show_total').empty().append(  "총 수강 개수:" + total + "개"  );
    }
  });

  $('#btn_buy').click(function(e) {

    alert("수강꾸러미에 담으시겠습니까?");
    
      console.log($(".good1"));
      if( $(".good1").length == 0){
        alert("시간표가 비었습니다");
      }else{
        var col11 = document.getElementById("col1-1");
        col11.style.backgroundColor = "blue"; 
      console.log(col11);
      }
  

  });
  $('#wishlist').click(function(){
    var input1 = document.getElementById("mon-data");
    

});
});



