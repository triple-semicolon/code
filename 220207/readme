###java
생성
- RecomAVO.java : 답변 추천
- RecomQVO.java : 질문 추천

추가
- AnswerDAO.java
   public List<AnswerVO> findAll() throws Exception;
   public AnswerVO findByPk(AnswerVO pvo) throws Exception;
   public void recom(AnswerVO pvo, String username) throws Exception;
- AnswerDAO_Impl.java 
...
@Override
	public List<AnswerVO> findAll() throws Exception {
		RowMapper<AnswerVO> rowMapper = new RowMapper<AnswerVO>() {
            @Override
            public AnswerVO mapRow(ResultSet rs, int idx) throws SQLException {
            	AnswerVO vo = new AnswerVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        List<AnswerVO> ls = jdbcTemplate.query("SELECT * FROM tmp_03 ORDER BY recommend DESC", rowMapper);
        return ls;
	}
  @Override
	public AnswerVO findByPk(final AnswerVO pvo) throws Exception {
    	
    	RowMapper<AnswerVO> rowMapper = new RowMapper<AnswerVO>() {
            @Override
            public AnswerVO mapRow(ResultSet rs, int idx) throws SQLException {
            	AnswerVO vo = new AnswerVO();
            	vo.setAns_no(rs.getInt("ans_no"));
            	vo.setNo(rs.getInt("no"));
            	vo.setUsername(rs.getString("username"));
            	vo.setContent(rs.getString("content"));
            	vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        AnswerVO ls = jdbcTemplate.queryForObject("select * from tmp_03 where ans_no="+pvo.getAns_no(), rowMapper);
		return ls;
	}

	@Override
	public void recom(AnswerVO pvo, String username) throws Exception {
		RowMapper<RecomAVO> rm = new RowMapper<RecomAVO>() {
			@Override
			public RecomAVO mapRow(ResultSet rs, int arg1) throws SQLException {
				RecomAVO rec = new RecomAVO();
				rec.setAns_no( rs.getInt("ans_no") );
				rec.setNo( rs.getInt("no") );
				rec.setUsername( rs.getString("username") );
				return rec;
			}
    	};
    	
    	AnswerVO vo = findByPk(pvo);
        try {
        	RecomAVO rec = jdbcTemplate.queryForObject("SELECT * FROM recomA_T WHERE ans_no=? AND username=?", rm, vo.getAns_no(),username );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE tmp_03 SET recommend = recommend+1 WHERE ans_no="+pvo.getAns_no());
        	jdbcTemplate.update("INSERT INTO recomA_T VALUES(?,?,?)", vo.getAns_no(),vo.getNo(), username );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
	}
  ...
  @Override
	public int delByPK(AnswerVO pvo) throws Exception {
		 int uc = jdbcTemplate.update("DELETE FROM tmp_03 WHERE ans_no = " + pvo.getAns_no());
		 uc = uc + jdbcTemplate.update("DELETE FROM recomA_T WHERE ans_no = " + pvo.getAns_no());
	     return uc;
	}
- SpringDAO.java
public SpringVO findBestQ() throws Exception;
public void recom(SpringVO pvo, String username) throws Exception;
- SpringDAO_Impl.java
...
@Override
    public SpringVO findBestQ() throws Exception{
    	RowMapper<SpringVO> rowMapper = new RowMapper<SpringVO>() {
            @Override
            public SpringVO mapRow(ResultSet rs, int idx) throws SQLException {
                SpringVO vo = new SpringVO();
                vo.setNo(rs.getInt("no"));
                vo.setUsername( rs.getString("username") );
                vo.setTitle( rs.getString("title") );
                vo.setContent( rs.getString("content") );
                vo.setOfn( rs.getString("ofn"));
                vo.setFsn( rs.getString("fsn"));
                vo.setView(rs.getInt("view"));
                vo.setRecommend(rs.getInt("recommend"));
                vo.setTime( rs.getString("time"));
                return vo;
            }
        };
        SpringVO ls = jdbcTemplate.queryForObject("select * from tmp_02 where recommend = (select max(recommend) as MAX from tmp_02)", rowMapper);
		return ls;
    }
...

@Override
public void recom(SpringVO pvo, String username) throws Exception { 
    	RowMapper<RecomQVO> rm = new RowMapper<RecomQVO>() {
			@Override
			public RecomQVO mapRow(ResultSet rs, int arg1) throws SQLException {
				RecomQVO rec = new RecomQVO();
				rec.setNo( rs.getInt("no") );
				rec.setUsername( rs.getString("username") );
				return rec;
			}
    	};
    	
        try {
        	RecomQVO rec = jdbcTemplate.queryForObject("SELECT * FROM recomQ_T WHERE no=? and username=?", rm, pvo.getNo(), username );
        }
        catch( EmptyResultDataAccessException e ) {
        	// 찾는 값이 없다면
        	jdbcTemplate.update("UPDATE tmp_02 SET recommend = recommend+1 WHERE no="+pvo.getNo());
        	jdbcTemplate.update("INSERT INTO recomQ_T VALUES(?,?)", pvo.getNo(), username );
        	// 원래 글 삭제됐을때 이것도 삭제되게 구현!! 
        }
}
...
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
        return uc;
    }

-Ctrl.java
...
//
	@RequestMapping("/login_add.do")
	public String login_add(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password, HttpSession session) throws Exception {
		if (username == null || username.equals("")) {
			return "redirect:login.do?ecode=id_invalid";
		}
		else if (password == null || password.equals("")) {
			return "redirect:login.do?ecode=pwd_invalid";
		} else {
			LoginVO vo = loginDao.findBy_IdPwd(username, password);
			if (vo == null) {
				return "redirect:login.do?ecode=login_fail";
			} else {
				session.setAttribute("username", vo.getUsername());
				session.setAttribute("password", vo.getPassword());
				return "redirect:home.do";
			}
		}
	}
...
// 질문 등록
	@RequestMapping("/add.do")
	public String add(final @ModelAttribute SpringVO vo )
			throws Exception {
		
		System.out.println( vo.toString() );
		
		/*MultipartRequest mpr = new MultipartRequest(request, Util.uploadDir(), 1024 * 1024 * 16, "utf-8", null);
		String ofn = mpr.getOriginalFileName("apple");
		if (ofn != null) {
			File file = mpr.getFile("apple");
			String fsn = UUID.randomUUID().toString();
			file.renameTo(new File(Util.uploadDir() + fsn));
			vo.setOfn(ofn);
			vo.setFsn(fsn);
		}*/
		springDao.add(vo);
		return "redirect:qna_list.do";
	}
...
// 질문 삭제
	@RequestMapping("/del.do")
	public String del(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception {
		springDao.delByPK(vo);
		return "redirect:qna_list.do";
	}
...
// 질문 추천
@RequestMapping("/recomQ.do")
	public String recomQ(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception {	
		springDao.recom(vo, (String)session.getAttribute("username"));
		return "redirect:qna.do?no=" + vo.getNo();
	}
	// 답변 추천
	@RequestMapping("/recomA.do")
	public String recomA(final @ModelAttribute AnswerVO pvo, final @ModelAttribute SpringVO vo,HttpSession session) throws Exception {	
		answerDao.recom(pvo,(String)session.getAttribute("username"));
		return "redirect:qna.do?no=" + vo.getNo();
	}
...
// home
	@RequestMapping("/home.do")
	public ModelAndView main() throws Exception {
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("main");
		return mnv;
	}
	
	// 이달의 활동왕
	@RequestMapping("/month_act.do")
	ModelAndView month_act() throws Exception {
		SpringVO ls = springDao.findBestQ();
		List<AnswerVO> ans_ls = answerDao.findAll();
		
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("thismonth_a");
		mnv.addObject("ans_ls", ans_ls);
		mnv.addObject("list", ls);
		return mnv;
	}
	
	// 잡담
	@RequestMapping("/any.do")
	public ModelAndView any() throws Exception {
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("anything");
		return mnv;
	}
###jsp
생성
- main.jsp
- thismonth_a.jsp
- anything.jsp
추가
- view_list.jsp
...
<div class="container">
    <div class="jumbotron title">질문방</div>
    <form method="GET" action="home.do">
    	<button>home</button>
    </form>
...
-qna_view.jsp
...
<div class="container">
	<!-- Question -->
	<div class="jumbotron title">질문과 답변</div>
	<form method="GET" action="qna_list.do">
		<button>Question List</button>
	</form>
...





