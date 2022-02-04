package banana;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;

@Controller
public class Ctrl {
    private SpringDAO springDao = null;
    public SpringDAO getSpringDao() { return springDao;}
    public void setSpringDao(SpringDAO springDao) {this.springDao = springDao;}

    @ResponseBody
    @RequestMapping("/ping.do")
    public String ping() throws Exception{
        return springDao.toString();
    }
    
    @RequestMapping("/home.do")
    ModelAndView list() throws Exception{
        List<SpringVO> ls = springDao.findAll();
        ModelAndView mnv = new ModelAndView();
        mnv.setViewName("view_list");
        mnv.addObject("list", ls);
        return mnv;
    }
    
    @RequestMapping("/add.do")
    public String add( final @ModelAttribute SpringVO vo, HttpSession session) throws Exception {
//    	MultipartRequest mpr = new MultipartRequest( request , Util.uploadDir(), 
//    			1024*1024*16 , "utf-8", null );
//    	String ofn = mpr.getOriginalFileName("apple");
//		, HttpServletRequest request
//    	if( ofn != null )
//		{
//			File file = mpr.getFile("apple");
//			
//			String fsn = UUID.randomUUID().toString();
//			file.renameTo( new File( Util.uploadDir() + fsn ) );
//
//			vo.setOfn( ofn );
//			vo.setFsn( fsn );
//		}
    	springDao.add(vo);
        return "redirect:home.do";
    }
    
    @RequestMapping("/update.do")
    ModelAndView update() throws Exception {
    	ModelAndView mnv = new ModelAndView();
        mnv.setViewName("update_view");
        return mnv;
    }
    
    @RequestMapping("/del.do")
    public String del( final @ModelAttribute SpringVO vo ,HttpSession session) throws Exception {
        springDao.delByPK(vo);
        return "redirect:home.do";
    }
    
    @RequestMapping("/qna.do")
    ModelAndView quest(final @ModelAttribute SpringVO vo) throws Exception{
        SpringVO ls = springDao.findByPk(vo);
    	ModelAndView mnv = new ModelAndView();
        mnv.setViewName("qna_view");
        mnv.addObject("list", ls);
        return mnv;
    }
    
    @RequestMapping("/recom.do")
    public String recom( final @ModelAttribute SpringVO vo ,HttpSession session) throws Exception {
        springDao.recom(vo);
        return "redirect:qna.do?no="+vo.getNo();
    }
    
    @RequestMapping("/down.do")
	public void down( @RequestParam("fsn") String fsn, @RequestParam("ofn") String ofn, 
		HttpServletResponse response ) throws Exception 
	{
		if( fsn.equals("fsn")||fsn==null ) {
			fsn = "down.svg";
		}
		InputStream in = new FileInputStream( Util.uploadDir() + fsn );
		
		response.setContentType("application/octet");
		response.setHeader("content-disposition","attachment;filename=" + ofn );
		
		OutputStream out2 = response.getOutputStream();
		int len = 0;
		byte[] buf = new byte[1024];
		
		while( ( len = in.read( buf ) ) != -1 ) {
			out2.write( buf, 0, len );
			out2.flush();
		} 
		out2.close();
		in.close();
	}
}
