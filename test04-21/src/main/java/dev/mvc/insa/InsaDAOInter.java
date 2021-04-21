package dev.mvc.insa;

import java.util.List;


public interface InsaDAOInter {
	
	/**
	   * 인사 등록  
	   * @param insaVO
	   * @return
	   */
	public int create(InsaVO insaVO);

	/**
	   * 목록
	   * <xmp>
	   * <select id="list_categrpno_asc" resultType="CategrpVO">
	   * </xmp> 
	   * @return 레코드 목록
	   */
	public List<InsaVO> list_insanum_asc();
	
	/**
	  * 조회, 수정 폼, 삭제 폼
	  * @param insa_num
	  * @return
	  */
	public InsaVO read(int insa_num);
	
	/**
	 * 수정 처리
	  * <xmp>
	  * <update id="update" parameterType="InsaVO"> 
	  * </xmp>
	  * @param insaVO
	  * @return 처리된 레코드 갯수
	  */
	public int update(InsaVO insaVO);
	
	/**
	  * 삭제
      * <xmp>
	  * <update id="update" parameterType="InsaVO"> 
	  * </xmp>
	  * @param insaVO
	  * @return 처리된 레코드 갯수
	  */
    public int delete(int insa_num);
    
    
}
