<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<script type="text/javascript">
$(function(){
	//answer 항목에 Markdown 문법을 지원 합니다.
	var FAQ = [{
	    category: "요기에듀 서비스",
	    question: "요기에듀는 어떤 서비스 인가요",
	    answer: "내 주위의 학원을 쉽게 찾고 시간표까지 구성해 볼 수 있는 서비스 입니다."
	}, {
	    category: "요기에듀 서비스",
	    question: "무료인가요?",
	    answer: "유료화 하여 구독서비스 형태로 제공할 예정입니다."
	}, {
	    category: "요기에듀 서비스",
	    question: "학원등록은 어떻게 하나요",
	    answer: "서비스 준비중 이여서 추후 공지해 드리겠습니다"
	}, {
	    category: "학생",
	    question: "회원가입은 어떻게 하나요",
	    answer: "상단에 회원가입을 누르세요"
	}, {
	    category: "학생",
	    question: "학원정보가 정확한가요",
	    answer: "교육부와 교육학술정보원에서 제공하는 데이터를 사용중입니다."
	}, {
	    category: "학생",
	    question: "업데이트 예정이 있나요",
	    answer: "1월중에 업데이트가 있을 예정입니다. 진행되는대로 공지해드리겠습니다."
	}, {
	    category: "학부모",
	    question: "결제방법은 어떤게 있나요",
	    answer: "결제 툴이 제공되기 전에는 무료로 사용하시고, 유료 전환 시에 공지해드리겠습니다."
	}, {
	    category: "학부모",
	    question: "시간표 이외에는 어떤 서비스가 있나요",
	    answer: "가까운 시일내에 공지해드리겠습니다. 최종적으로는 학생의 등하원관리까지 가능하게 할 예정입니다."
	}, {
	    category: "학부모",
	    question: "페이지를 만드신 목적이 뭔가요?",
	    answer: "학원 강사 출신의 기획자가 필요하다고 생각하여 만들게 되었습니다."
	}, {
	    category: "학원장",
	    question: "등록하는 방법을 자세히 알려주세요",
	    answer: "회원가입 하시고 어쩌고 저쩌고"
	}, {
	    category: "학원장",
	    question: "수수료 정책은 어떻게 되나요",
	    answer: "결제서비스가 구현된 이후에 월, 분기, 년 등의 구독 서비스 형태로 제공될 예정입니다."
	}, {
	    category: "학원장",
	    question: "추후 추가될 기능이 어떤게 있나요",
	    answer: "강의가 학원에만 종속되어있을 뿐 아니라 강사님들에게도 들어가게 하여 평점 및 리뷰를 남길 수 있게 할 예정입니다."
	}]
	
	
	
	
});

$(document).ready(function() {
    var cArray = [];
    for (i in FAQ) {
        var cItem = {};
        var indexCategory = -1;
        for (j in cArray) {
            if (cArray[j].text == FAQ[i].category) {
                indexCategory = j;
                break;
            }
        }

        if (indexCategory == -1) {
            cItem.text = FAQ[i].category;
            cItem.html = createHtmlFAQ(FAQ[i].question, FAQ[i].answer, i);
            cArray.push(cItem);
        } else {
            cArray[indexCategory].html += createHtmlFAQ(FAQ[i].question, FAQ[i].answer, i);
        }
    }

    var html = "";

    for (i in cArray) {
        html += "<div class=\"faqHeader\">" + cArray[i].text + "</div>\n" + cArray[i].html + "<br />"
    }

    $("#accordion").html($(html));
    $(".accordion-toggle:first").click();
});

function createHtmlFAQ(q, a, id) {
    return (
        "<div class=\"panel panel-default\">" +
        "    <div class=\"panel-heading\">" +
        "        <h4 class=\"panel-title\">" +
        "            <a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse" + id + "\">" + q + "</a>" +
        "        </h4>" +
        "    </div>" +
        "    <div id=\"collapse" + id + "\" class=\"panel-collapse collapse\">" +
        "        <div class=\"panel-body\">" +
        "            " + marked(a) +
        "        </div>" +
        "    </div>" +
        "</div>\n");
}
</script>
<%@include file="/WEB-INF/views/header.jsp"%>
	<section id="intro" class="clearfix">
        <div class="container">

            <div class="intro-img">
                <img src="/static/img/intro-img.svg" alt="" class="img-fluid">
            </div>

            <div class="intro-info">
                <h2><span>요기에듀</span>에게<br>자주 하는 질문들 입니다!<br>다른 질문은<br>이메일로 주세요!</h2>
                
            </div>

        </div>
    </section>

	<section style="background-color:#e4eefa;">
		<div class="container" style="padding-top:20px; font-weight:600;" >
			<div class="page-header">
				<h1>YOGIEDU FAQ <small style="color:#cdcdcd;">요기에듀에게 자주 하는 질문</small></h1>
			</div>

			<!-- FAQ - START -->
			<div class="container">
    			<br />

			    <div class="panel-group" id="accordion">
    			</div>
			</div>
		</div>
	</section>

</body>
<%@include file="/WEB-INF/views/footer.jsp"%>

