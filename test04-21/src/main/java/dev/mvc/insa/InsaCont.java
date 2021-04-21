package dev.mvc.insa;

import org.springframework.beans.factory.annotation.Qualifier;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class InsaCont {
	@Autowired
	@Qualifier("dev.mvc.insa.InsaProc")
	private InsaProcInter insaProc;
	
	public InsaCont() {
		System.out.println("--> InsaCont created.");
	}
	
	/**
	   * ����� http://localhost:8081/insa/create.do
	   * 
	   * @return
	   */
	@RequestMapping(value = "/insa/create.do", method = RequestMethod.GET)
	public ModelAndView create() {
	  ModelAndView mav = new ModelAndView();
	  mav.setViewName("/insa/create"); // /webapp/insa/create.jsp
	
	  return mav; // forward
	}

	/**
	  * ��� ó�� http://localhost:8081/insa/create.do
	  * 
	  * @return
	  */
	@RequestMapping(value = "/insa/create.do", method = RequestMethod.POST)
	public ModelAndView create(InsaVO insaVO) {
	  // request.setAttribute("insaVO", insaVO) �ڵ� ����

	  ModelAndView mav = new ModelAndView();
	  // mav.setViewName("/insa/create_msg"); // /webapp/insa/create_msg.jsp
	  System.out.println(insaVO.getInsa_name());
	  int cnt = this.insaProc.create(insaVO); // ��� ó��
	  System.out.println(cnt);
	  if (cnt == 0) {
	    mav.addObject("cnt", cnt); // request.setAttribute("cnt", cnt)
	
	    mav.addObject("url", "create_msg"); // create_msg.jsp, redirect parameter ����
	    mav.setViewName("redirect:/insa/msg.do"); 
	      
	  } else {
	    mav.setViewName("redirect:/insa/list.do");
	  }
	  
	  return mav;
	}
	  
   /**
    * ��� http://localhost:8081/insa/list.do
    * 
    * @return
    */
   @RequestMapping(value = "/insa/list.do", method = RequestMethod.GET)
   public ModelAndView list() {
     ModelAndView mav = new ModelAndView();
     mav.setViewName("/insa/list"); // /webapp/insa/list.jsp

     // ��� ��ȣ �� ���� //List<InsaVO> list = this.insaProc.list();
     /* ������ ��ȣ �� ���� */ List<InsaVO> list = this.insaProc.list_insanum_asc();
     mav.addObject("list", list);

     return mav; // forward
   }
   
   /**
    * ��ȸhttp://localhost:8081/insa/read.do
    * 
    * @return
    */
   @RequestMapping(value = "/insa/read.do", method = RequestMethod.GET)
   public ModelAndView read(int insa_num) {
     ModelAndView mav = new ModelAndView();
     mav.setViewName("/insa/read"); // /webapp/insa/read.jsp
     
     InsaVO insaVO = this.insaProc.read(insa_num);
     mav.addObject("insaVO", insaVO);

     List<InsaVO> list = this.insaProc.list_insanum_asc();
     mav.addObject("list", list);

     return mav; // forward
   }
   
   /**
    * ���� �� http://localhost:8081/insa/update.do
    * 
    * @return
    */
   @RequestMapping(value = "/insa/update.do", method = RequestMethod.GET)
   public ModelAndView update(int insa_num) {
     ModelAndView mav = new ModelAndView();
     mav.setViewName("/insa/update"); // /webapp/insa/ update.jsp

     InsaVO insaVO = this.insaProc.read(insa_num);
     mav.addObject("insaVO", insaVO);

     List<InsaVO> list = this.insaProc.list_insanum_asc();
     mav.addObject("list", list);
  
     return mav; // forward
   } 
     
   /**
    * ���� ó��
    * 
    * @param insaVO
    * @return
    */
   @RequestMapping(value = "/insa/update.do", method = RequestMethod.POST)
   public ModelAndView update(InsaVO insaVO) {

     ModelAndView mav = new ModelAndView();

     int cnt = this.insaProc.update(insaVO);
     mav.addObject("cnt", cnt); // request�� ����
     
     mav.setViewName("/insa/update_msg");

     return mav;
   }
   
   /**
    * ������ http://localhost:8081/insa/read_delete.do
    * @return
    */
   @RequestMapping(value = "/insa/read_delete.do", method = RequestMethod.GET)
   public ModelAndView read_delete(int insa_num) {
     ModelAndView mav = new ModelAndView(); 

     InsaVO insaVO = this.insaProc.read(insa_num);
     mav.addObject("insaVO", insaVO);
     
     mav.setViewName("/insa/read_delete"); // /webapp/insa/delete.jsp

     return mav; // forward
   }

   /**
    * ���� ó��
    * @param insa_num
    * @return
    */
   @RequestMapping(value = "/insa/delete.do", method = RequestMethod.POST)
   public ModelAndView delete(HttpServletRequest request, int insa_num) {

     ModelAndView mav = new ModelAndView();

     int cnt = this.insaProc.delete(insa_num);
     mav.addObject("cnt", cnt); // request�� ����
     
     mav.setViewName("/insa/delete_msg");

     return mav;
   }
    
   
   
   
}
