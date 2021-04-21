package dev.mvc.insa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("dev.mvc.insa.InsaProc")
public class InsaProc implements InsaProcInter {
	@Autowired
	private InsaDAOInter insaDAO;
	
	public InsaProc() {
		
	}
	
	@Override
	public int create(InsaVO insaVO) {
		int cnt = this.insaDAO.create(insaVO);
		
		return cnt;
	}
	
	@Override
	public List<InsaVO> list_insanum_asc() {
	    List<InsaVO> list = this.insaDAO.list_insanum_asc();
	    
	    return list;
	}
	
	@Override
	public InsaVO read(int insa_num) {
		InsaVO insaVO = this.insaDAO.read(insa_num);
	   
		return insaVO;
	} 

	@Override
	public int update(InsaVO insaVO) {
		int cnt = this.insaDAO.update(insaVO);
	   
		return cnt;
	} 
	
    @Override
    public int delete(int insa_num) {
    	int cnt = this.insaDAO.delete(insa_num);
    	
    	return cnt;
    }
    
    
}

