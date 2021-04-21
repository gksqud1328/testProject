package dev.mvc.insa;

import java.util.List;


public interface InsaDAOInter {
	
	/**
	   * �λ� ���  
	   * @param insaVO
	   * @return
	   */
	public int create(InsaVO insaVO);

	/**
	   * ���
	   * <xmp>
	   * <select id="list_categrpno_asc" resultType="CategrpVO">
	   * </xmp> 
	   * @return ���ڵ� ���
	   */
	public List<InsaVO> list_insanum_asc();
	
	/**
	  * ��ȸ, ���� ��, ���� ��
	  * @param insa_num
	  * @return
	  */
	public InsaVO read(int insa_num);
	
	/**
	 * ���� ó��
	  * <xmp>
	  * <update id="update" parameterType="InsaVO"> 
	  * </xmp>
	  * @param insaVO
	  * @return ó���� ���ڵ� ����
	  */
	public int update(InsaVO insaVO);
	
	/**
	  * ����
      * <xmp>
	  * <update id="update" parameterType="InsaVO"> 
	  * </xmp>
	  * @param insaVO
	  * @return ó���� ���ڵ� ����
	  */
    public int delete(int insa_num);
    
    
}
