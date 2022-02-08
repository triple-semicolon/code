### java

## 생성

- ComVO.java
- ComDAO.java
- ComDAO_Impl.java
- ComAnsVO.java
- ComAnsDAO.java
- ComAnsDAO_Impl.java
- ViewComVO.java
- RecomCVO.java

## 추가

- Ctrl.java

        // 잡담 db
	    private ComDAO comDao = null;
	    public ComDAO getComDao() { return comDao; }
	    public void setComDao(ComDAO comDao) { this.comDao = comDao; }
	
    	// 잡담 답변 db
	    private ComAnsDAO comansDao = null;
	    public ComAnsDAO getComansDao() { return comansDao; }
	    public void setComansDao(ComAnsDAO comansDao) { this.comansDao = comansDao; }

        ...
        
        // 잡담
	    // 잡담 리스트
	    @RequestMapping("/com_list.do")
	    public ModelAndView com_list(HttpSession session) throws Exception {
		    List<ComVO> ls = comDao.findAll();
		    ModelAndView mnv = new ModelAndView();
		
	    	if (session.getAttribute("username") == null) {
	    		mnv.setViewName("view_login");
	    		mnv.addObject("ecode", "need_login");
		    }
		    else {
			    mnv.setViewName("com_list");
		    	mnv.addObject("list", ls);
		    }
    		return mnv;
	    }
	
	    // 잡담 등록
	    @RequestMapping("/add_com.do")
	    public String add_com(final @ModelAttribute ComVO vo )
	    	throws Exception {
	    	System.out.println( vo.toString() );
	    	comDao.add(vo);
	    	return "redirect:com_list.do";
	    }
		
	    // 잡담 등록 화면
	    @RequestMapping("/update_com.do")
	    public ModelAndView update_com() throws Exception {
	    	ModelAndView mnv = new ModelAndView();
	    	mnv.setViewName("update_com");
	    	return mnv;
	    }
		
	    // 잡담 삭제
	    @RequestMapping("/delCom.do")
	    public String del_com(final @ModelAttribute ComVO vo, HttpSession session) throws Exception {
	    	comDao.delByPK(vo);
	    	return "redirect:com_list.do";
	    }
	
	    // 답변 등록
	    @RequestMapping("/addCom_ans.do")
	    public String ansCom_add(final @ModelAttribute ComAnsVO avo,final @ModelAttribute ComVO vo)
	    		throws Exception {
	    	comansDao.add(avo, vo);
	    	return "redirect:com.do?no="+vo.getNo();
	    }
		
	    // 답변 삭제
	    @RequestMapping("/delCom_ans.do")
	    public String delCom_ans(final @ModelAttribute ComAnsVO avo,final @ModelAttribute ComVO vo) throws Exception {
	    	comansDao.delByPK(avo);
	    	return "redirect:com.do?no=" + avo.getNo();
	    }
	
	    // 답변 추천
	    @RequestMapping("/recomCom_A.do")
	    public String recomA_com(final @ModelAttribute ComAnsVO pvo, final @ModelAttribute ComVO vo,HttpSession session) throws Exception {	
	    	comansDao.recom(pvo,(String)session.getAttribute("username"));
	    	return "redirect:com.do?no=" + vo.getNo();
	    }
	
	    @RequestMapping("/com.do")
	    ModelAndView Community(final @ModelAttribute ComVO vo, final @ModelAttribute ComAnsVO avo, HttpSession session) throws Exception {
	    	comDao.view_update(vo, (String)session.getAttribute("username"));
	    	ComVO ls = comDao.findByPk(vo);
	    	List<ComAnsVO> ans_ls = comansDao.findByFk(avo,vo);
	    	ModelAndView mnv = new ModelAndView();
	    	mnv.setViewName("com_view");
	    	mnv.addObject("list", ls);
	    	mnv.addObject("ans_list",ans_ls);
	    	return mnv;
	    }
 
- SpringDAO_Impl.java

        @Override
        public int delByPK(SpringVO pvo) throws Exception {
        	// 질문 삭제
            int uc = jdbcTemplate.update("DELETE FROM tmp_02 WHERE no = " + pvo.getNo());
            // 질문에 달린 답변들 삭제
            uc = uc + jdbcTemplate.update("DELETE FROM tmp_03 WHERE no = " + pvo.getNo());
            // 질문에 달린 추천 삭제
            uc = uc + jdbcTemplate.update("DELETE FROM recomQ_T WHERE no = " + pvo.getNo());
            // 질문에 대한 답변 추천 삭제
            uc = uc + jdbcTemplate.update("DELETE FROM recomA_T WHERE no = " + pvo.getNo());
            // 질문에 대한 조회수 추천 삭제
            uc = uc + jdbcTemplate.update("DELETE FROM view_T WHERE no = " + pvo.getNo());
            return uc;
        }
### jsp

## 생성

- com_list.jsp
- com_view.jsp
- update_com.jsp

### xml

## 추가

- spring.xml
	
		<bean id="comDao" class="banana.ComDAO_Impl">
			<property name="jdbcTemplate" ref="jtpl"/>
		</bean>

		<bean id="comansDao" class="banana.ComAnsDAO_Impl">
			<property name="jdbcTemplate" ref="jtpl"/>
		</bean>
	
		<bean class="banana.Ctrl">
			<property name="springDao" ref="springDao"/>
			<property name="answerDao" ref="answerDao"/>
			<property name="loginDao" ref="loginDao"/>
			<property name="noticeDao" ref="noticeDao"/>
			<property name="comDao" ref="comDao"/>
			<property name="comansDao" ref="comansDao"/>
		</bean>
	

