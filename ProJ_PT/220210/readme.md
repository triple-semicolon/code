조회수 넣기
추천수 버튼으로 만들기 (잘~~ 뵈게~)
마이페이지 만들기

글쓰기 제목 타입 textarea -> text 로 변경


1. 마이페이지 만들기
- 내가 쓴 질문 / 내가 쓴 답변
  내가 쓴 잡담/ 내가 쓴 답변
- 레코드에 제목 삭제 날짜

다영언니 수정본 올라오면 
2. 메뉴고정 수정
<div style="position:sticky; top:50px;">
	<div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div>

3. 조회수 넣기 (좋은답변이군요 에 넣기)
<div style="display: flex;">
	<div class="title_time" style="font-size: 12px; margin-left: 10px; margin-top:auto; color: gray;">조회수 3</div>
             <!-- <div class="user" style="font-size: 12px; margin-top: 20px; margin-left: 5px; color: gray;">2</div>  조회수 숫자.. 따로 빼야하나?.. -->
</div>

<!-- 조회수 -->
<div style="display: flex;">
<div class="title_time" style="font-size: 12px; margin-left: 10px; margin-top:auto; color: gray;">
		조회수 3
	</div>
</div>

4. 추천수 버튼으로 만들기
.wow {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 15px;
    margin-left: 25px;
    margin-top: 8px;
    border: 3px solid #FFDD3D;
    padding: 5px;
    border-radius: 5px;
    background: none;
    cursor: pointer;
    font-weight: bold;
    color: green;
}

.wow:hover,.wow:active,.wow:focus {
    background: #FFDD3D;
}

.wow_ans {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 14px;
    margin-left: 25px;
    margin-top: auto;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 2px solid #00CC00;
    background: none;
    padding: 2px 20px 2px 20px;
    cursor: pointer;
    color: green;
    font-weight: bold;
}

.wow_ans:hover,.wow_ans:active,.wow_ans:focus {
    background: #43A047;
    color: #FFFFFF;
}


<!-- 추천버튼 근데이제 숫자를 곁들인 .. 이렇게 해도 될까나?  -->
<button class="wow" onclick="추천이되어야겠지..">좋은질문이네요! 5</button>
 
<!-- 댓글 추천 버튼  -->
<button class="wow_ans" onclick="추천이되어야겠지..">좋은답변이네요! 5</button>

5. 삭제버튼 red -> gray

comlist
comview
main
notice content
qna_view

조회수 : 잡담, 질문
추천버튼 : 질문
댓글추천버튼 : 잡담, 질문
  
+++ git 올리는 법
git과 연결된 폴더에 파일 올리고 오른쪽마우스 - git bash
git status 로 변경사항 확인
git add .
git commit -m "메시지쓰고"
git push
