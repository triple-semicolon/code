package banana;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Ctrl {
	private SpringDAO springDao = null;
	public SpringDAO getSpringDao() { return springDao; }
	public void setSpringDao(SpringDAO springDao) { this.springDao = springDao; }

	private LoginDAO loginDao = null;
	public LoginDAO getLoginDao() { return loginDao; }
	public void setLoginDao(LoginDAO loginDao) { this.loginDao = loginDao; }
	
	private AnswerDAO answerDao = null;
	public AnswerDAO getAnswerDao() { return answerDao; }
	public void setAnswerDao(AnswerDAO answerDao) { this.answerDao = answerDao; }
	
	private NoticeDAO noticeDao = null;
	public NoticeDAO getNoticeDao() { return noticeDao; }
	public void setNoticeDao(NoticeDAO noticeDao) { this.noticeDao = noticeDao; }
	
	@ResponseBody
	@RequestMapping("/ping.do")
	public String ping() throws Exception {
		return noticeDao.toString();
	}

	@RequestMapping("/login.do")
	public String login(HttpSession session, @RequestParam(value = "ecode", required = false) String ecode,
			HttpServletRequest request) throws Exception {
		if (session.getAttribute("username") != null || session.getAttribute("password") != null) {
			session.removeAttribute("username");
			session.removeAttribute("password");
			session.removeAttribute("operator");
		}
		request.setAttribute("ecode", ecode);
		return "view_login";
	}

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
				session.setAttribute("operator", vo.getOperator());
				return "redirect:home.do";
			}
		}
	}

	@RequestMapping("/join.do")
	public String join(@RequestParam(value = "ecode", required = false) String ecode, HttpServletRequest request)
			throws Exception {
		request.setAttribute("ecode", ecode);
		return "id_create";
	}

	@RequestMapping("/join_add.do")
	public String join_add(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password) throws Exception {
		if (username == null || username.equals("")) {
			return "redirect:join.do?ecode=id_invalid";
		}
		else if (password == null || password.equals("")) {
			return "redirect:join.do?ecode=pwd_invalid";
		}

		String res = loginDao.add_join(username, password);
		if (res.equals("fail")) {
			return "redirect:join.do?ecode=join_fail";
		} else {
			return "redirect:login.do?ecode=join_success";
		}
	}

	/*
	@RequestMapping("/list.do")
	public String list(HttpSession session, HttpServletRequest request) throws Exception {
		// /list.do 로 바로 접근하는 것 방지
		if (session.getAttribute("id") == null) {
			// 세션 정보가 없다면 로그인 화면으로 이동
			return "redirect:login.do?ecode=need_login";
		} else {
			// 세션 정보가 있다면 list 화면으로 이동
			return "view_list";
		}
	}*/
	
	@RequestMapping("/notice.do")
	public ModelAndView notice() throws Exception {
		List<NoticeVO> ls = noticeDao.findAll();
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("view_notice");
		mnv.addObject("list", ls);
		return mnv;
	}
	
	@RequestMapping("/notice_content.do")
	public ModelAndView notice_content(@ModelAttribute NoticeVO pvo) throws Exception {
		NoticeVO ls = noticeDao.findByPk(pvo);
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("notice_content");
		mnv.addObject("list", ls);
		return mnv;
	}
	
	@RequestMapping("/update_notice.do")
	public String update_notice() throws Exception {
		return "update_notice";
	}
	
	@RequestMapping("/add_notice.do")
	public String add_notice(final @ModelAttribute NoticeVO vo )
			throws Exception {
		System.out.println( vo.toString() );
		noticeDao.add(vo);
		return "redirect:notice.do";
	}
	
	@RequestMapping("/del_notice.do")
	public String del_notice(@ModelAttribute NoticeVO vo) throws Exception {
		noticeDao.delByPK(vo);
		return "redirect:notice.do";
	}
	
	@RequestMapping("/home.do")
	public ModelAndView list( HttpSession session ) throws Exception {
		List<SpringVO> ls = springDao.findAll();
		ModelAndView mnv = new ModelAndView();
		if (session.getAttribute("username") == null) {
			mnv.setViewName("view_login");
			mnv.addObject("ecode", "need_login");
		}
		else {
			mnv.setViewName("view_list");
			mnv.addObject("list", ls);
		}
		return mnv;
	}
	
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
		return "redirect:home.do";
	}
	
	@RequestMapping("/add_ans.do")
	public String ans_add(final @ModelAttribute AnswerVO avo,final @ModelAttribute SpringVO vo)
			throws Exception {
		answerDao.add(avo, vo);
		return "redirect:qna.do?no="+vo.getNo();
	}
	
	@RequestMapping("/del_ans.do")
	public String del_ans(final @ModelAttribute AnswerVO avo,final @ModelAttribute SpringVO vo) throws Exception {
		answerDao.delByPK(avo);
		return "redirect:qna.do?no=" + avo.getNo();
	}

	@RequestMapping("/update.do")
	public ModelAndView update() throws Exception {
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("update_view");
		return mnv;
	}
	
	@RequestMapping("/del.do")
	public String del(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception {
		springDao.delByPK(vo);
		return "redirect:home.do";
	}

	@RequestMapping("/qna.do")
	ModelAndView quest(final @ModelAttribute SpringVO vo, final @ModelAttribute AnswerVO avo, HttpSession session) throws Exception {
		springDao.view_update(vo, (String)session.getAttribute("username"));
		SpringVO ls = springDao.findByPk(vo);
		List<AnswerVO> ans_ls = answerDao.findByFk(avo,vo);
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("qna_view");
		mnv.addObject("list", ls);
		mnv.addObject("ans_list",ans_ls);
		return mnv;
	}

	@RequestMapping("/recomQ.do")
	public String recomQ(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception {	
		springDao.recom(vo, (String)session.getAttribute("username"));
		return "redirect:qna.do?no=" + vo.getNo();
	}
	
	@RequestMapping("/recomA.do")
	public String recomA(final @ModelAttribute AnswerVO pvo, final @ModelAttribute SpringVO vo,HttpSession session) throws Exception {	
		answerDao.recom(pvo,(String)session.getAttribute("username"));
		return "redirect:qna.do?no=" + vo.getNo();
	}

	@RequestMapping("/down.do")
	public void down(@RequestParam("fsn") String fsn, @RequestParam("ofn") String ofn, HttpServletResponse response)
			throws Exception {
		if (fsn.equals("fsn") || fsn == null) {
			fsn = "down.svg";
		}
		InputStream in = new FileInputStream(Util.uploadDir() + fsn);

		response.setContentType("application/octet");
		response.setHeader("content-disposition", "attachment;filename=" + ofn);

		OutputStream out2 = response.getOutputStream();
		int len = 0;
		byte[] buf = new byte[1024];

		while ((len = in.read(buf)) != -1) {
			out2.write(buf, 0, len);
			out2.flush();
		}
		out2.close();
		in.close();
	}
}
