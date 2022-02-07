#### 추가
package banana
- ViewVO.java
- NoticeVO.java
- NoticeDAO.java
- NoticeDAO_Impl.java
- Ctrl.java
  - notice()
  - notice_content()
  - update_notice()
  - add_notice()
  - del_notice()

WEB-INF/jsp
- view_notice.jsp
- notice_content.jsp
- update_notice.jsp

spring.xml

	<bean id="noticeDao" class="banana.NoticeDAO_Impl">
		<property name="jdbcTemplate" ref="jtpl"/>
	</bean>
	
	<bean class="banana.Ctrl">
		<property name="springDao" ref="springDao"/>
		<property name="answerDao" ref="answerDao"/>
		<property name="loginDao" ref="loginDao"/>
		<property name="noticeDao" ref="noticeDao"/>
	</bean>


- 추천과 조회수가 연동되었던 것 db 를 나누어 해결 <br/>
![image](https://user-images.githubusercontent.com/97445004/152749349-6da42508-a212-4980-8258-ca11ed741d83.png)

- 질문글 답변란의 작성자가 로그인할때 사용됐던 유저네임으로 사용되도록 구현 <br/>
![image](https://user-images.githubusercontent.com/97445004/152749464-7594bf55-1f80-4d69-a853-857dd7972a95.png)

- 공지사항 화면 구현 <br/>
![image](https://user-images.githubusercontent.com/97445004/152749577-c1c31e67-84c8-4811-9d37-5e11bafc2deb.png)

- 운영자만 글 쓸 수 있도록 글쓰기 버튼 권한에 따라 숨기기 구현 <br/>
![image](https://user-images.githubusercontent.com/97445004/152749720-cfd22a90-b99c-4c38-a14c-e923cc062d34.png)

- 공지사항 글쓰기에 작성자 운영자로 고정
![image](https://user-images.githubusercontent.com/97445004/152749767-872823ca-92b2-4408-9e00-451eeb6d165b.png)

- 
