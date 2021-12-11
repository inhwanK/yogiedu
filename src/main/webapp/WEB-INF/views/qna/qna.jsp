<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/header.jsp"%>
    <section id="intro" class="clearfix">
        <div class="container">

            <div class="intro-img">
                <img src="/static/img/intro-img.svg" alt="" class="img-fluid">
            </div>

            <div class="intro-info">
                <h2>우리아이 학원은<br><span>요기에듀</span>에서<br>찾아보고 보내세요!</h2>
                <div>
                    <a href="#about" class="btn-get-started scrollto">시작하기</a>
                    <a href="#services" class="btn-services scrollto">YOGIEDU?</a>
                </div>
            </div>

        </div>
    </section>
  <main id="main">

      <section class="section-qna u-wrap">
        
          <div class="qna-u">
            <div class="qna-u-title">
              <p>무엇을 도와드릴까요?</p>
            </div>
            <div class="qna-u-search">
              <div class="qna-u-search-icon">
                <i class="fa fa-search"></i>
              </div>
              <div class="qna-u-search-content">
                <input type="text" id="qna-u-search-content-txt"><input type="submit" id="qna-u-search-content-submit" value="찾기">
              </div>
            </div>
            <div class="qna-u-tag">
              <a href="#none"># 수수료</a><a href="#none"># 수강취소</a><a href="#none"># 각종오류</a><a href="#none"># 아님말고</a><a href="#none"># 나도몰라</a>
            </div>
          </div>
        </section>
        <section class="section-qna m-wrap">
          <div class="qna_m" id="qna_m_1">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_layer('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문1</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문2</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문3</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>

          <div class="qna_m" id="qna_m_2" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문4</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문5</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문6</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_3" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문7</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문8</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문9</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_4" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문10</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문11</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문12</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_5" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문13</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문14</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문15</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_6" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문16</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문17</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fa fa-quora"></i><p>질문18</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fa fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
        </section>
        <section class="section-qna d-wrap">
        
          <div class="qna-d">
            <div class="qna-d-title">
              <p>상 담 안 내</p>
            </div>
            <div class="qna-d-line"></div>
            <div class="qna-d-content">
              <div class="qna-d-content-l">
                <div class="qna-d-content-l-centername">
                  <p>일반 고객센터</p>
                </div>
                <div class="qna-d-content-l-centernumber">
                  <p>1544-7979</p>
                </div>
              </div>
              <div class="qna-d-content-r">
                <p>어떤거는 문의를 :<br> 오전9시 ~ 오후 6시</p>
                <p>어떤거는 문의를 :<br> 오전10시~ 오후 5시</p>
              </div>
            </div>
            <div class="qna-d-line"></div>
            <div class="qna-d-content">
              <div class="qna-d-content-l">
                <div class="qna-d-content-l-centername">
                  <p>노인 고객센터</p>
                </div>
                <div class="qna-d-content-l-centernumber">
                  <p>1544-0000</p>
                </div>
              </div>
              <div class="qna-d-content-r">
                <p>어떤거는 문의를 :<br> 오전9시 ~ 오후 6시</p>
                <p>어떤거는 문의를 :<br> 오전10시~ 오후 5시</p>
              </div>
            </div>
          </div>
        
      </section>
  
  <script type="text/javascript">
    function show_layer(qna_m_i){
      document.all.qna_m_1.style.display="none";
      document.all.qna_m_2.style.display="none";
      document.all.qna_m_3.style.display="none";
      document.all.qna_m_4.style.display="none";
      document.all.qna_m_5.style.display="none";
      document.all.qna_m_6.style.display="none";
      
        switch(qna_m_i)
          {
          case '1':
          document.all.qna_m_1.style.display="";
          break;
          case '2':
          document.all.qna_m_2.style.display="";
          break;
          case '3':
          document.all.qna_m_3.style.display="";
          break;
          case '4':
          document.all.qna_m_4.style.display="";
          break;
          case '5':
          document.all.qna_m_5.style.display="";
          break;
          case '6':
          document.all.qna_m_6.style.display="";
          break;
          }
      }
  </script>
</main>
<%@include file="/WEB-INF/views/footer.jsp"%>

