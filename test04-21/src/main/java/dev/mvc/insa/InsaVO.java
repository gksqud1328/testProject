package dev.mvc.insa;

public class InsaVO {
                           // MEMBER ���̺� (�Ż���, �з�)
   private int insa_num;          // �⺻Ű : ������ȣ (��ϼ�)
   private String    insa_name;     // ������
   private String   insa_salary;   // �޿� 
   private String   insa_birth;      // �������
   private String   insa_gender;   // ����
   private String   insa_pdate;      // ������Ʈ ���� ����
   private String   insa_deft;      // �μ�
   private String   insa_pos;      // ����
   private String   insa_addr;       // �ּ�
   private String   insa_edu1;      // 2,3���� �б���
   private String   insa_major1;   // 2,3���� �а���
   private String   insa_gradu1;   // 2,3���� ������   
   private String   insa_edu2;      // 4���� �б���
   private String   insa_major2;   // 4���� �а���
   private String   insa_gradu2;   // 4���� ������
   private String   rdate;         // �������
   
                        // LICE ���̺� (�ڰ���, �������)
   private String lice_title;  // �ڰ�����(�ڰ���)/������� �� �ܱ��� �ɷ�(�������)
   private String lice_rdate;  // �����(�ڰ���)
   private String lice_level;  // ���õ�(������� �� �ܱ��� �ɷ�)
   
                        //CARE ���̺� (���, ����)   
   private String care_organ;   // ȸ���(���)/���(����)
   private String care_sdate;  // ������
   private String care_edate;  // ������
   private String care_work;   // ������(���)/������(����)
   private String care_posi;   // ����(���)
   
                        // SKILL ���̺�
   private String skill_pname; // ������Ʈ��
   private String skill_sdate; // ������
   private String skill_edate; // ������
   private String skill_comp;  // ����
   private String skill_posi;  // ����
   private String skill_os;    // �ü��
   private String skill_lang;  // ���߾��
   private String skill_db;    // DBMS
   private String skill_tool;  // ���ߵ���
   private String skill_fram;  // �����ӿ�ũ
   private String skill_etc;   // ��Ÿ
   public int getInsa_num() {
      return insa_num;
   }
   public void setInsa_num(int insa_num) {
      this.insa_num = insa_num;
   }
   public String getInsa_name() {
      return insa_name;
   }
   public void setInsa_name(String insa_name) {
      this.insa_name = insa_name;
   }
   public String getInsa_salary() {
      return insa_salary;
   }
   public void setInsa_salary(String insa_salary) {
      this.insa_salary = insa_salary;
   }
   public String getInsa_birth() {
      return insa_birth;
   }
   public void setInsa_birth(String insa_birth) {
      this.insa_birth = insa_birth;
   }
   public String getInsa_gender() {
      return insa_gender;
   }
   public void setInsa_gender(String insa_gender) {
      this.insa_gender = insa_gender;
   }
   public String getInsa_pdate() {
      return insa_pdate;
   }
   public void setInsa_pdate(String insa_pdate) {
      this.insa_pdate = insa_pdate;
   }
   public String getInsa_deft() {
      return insa_deft;
   }
   public void setInsa_deft(String insa_deft) {
      this.insa_deft = insa_deft;
   }
   public String getInsa_pos() {
      return insa_pos;
   }
   public void setInsa_pos(String insa_pos) {
      this.insa_pos = insa_pos;
   }
   public String getInsa_addr() {
      return insa_addr;
   }
   public void setInsa_addr(String insa_addr) {
      this.insa_addr = insa_addr;
   }
   public String getInsa_edu1() {
      return insa_edu1;
   }
   public void setInsa_edu1(String insa_edu1) {
      this.insa_edu1 = insa_edu1;
   }
   public String getInsa_major1() {
      return insa_major1;
   }
   public void setInsa_major1(String insa_major1) {
      this.insa_major1 = insa_major1;
   }
   public String getInsa_gradu1() {
      return insa_gradu1;
   }
   public void setInsa_gradu1(String insa_gradu1) {
      this.insa_gradu1 = insa_gradu1;
   }
   public String getInsa_edu2() {
      return insa_edu2;
   }
   public void setInsa_edu2(String insa_edu2) {
      this.insa_edu2 = insa_edu2;
   }
   public String getInsa_major2() {
      return insa_major2;
   }
   public void setInsa_major2(String insa_major2) {
      this.insa_major2 = insa_major2;
   }
   public String getInsa_gradu2() {
      return insa_gradu2;
   }
   public void setInsa_gradu2(String insa_gradu2) {
      this.insa_gradu2 = insa_gradu2;
   }
   public String getRdate() {
      return rdate;
   }
   public void setRdate(String rdate) {
      this.rdate = rdate;
   }
   public String getLice_title() {
      return lice_title;
   }
   public void setLice_title(String lice_title) {
      this.lice_title = lice_title;
   }
   public String getLice_rdate() {
      return lice_rdate;
   }
   public void setLice_rdate(String lice_rdate) {
      this.lice_rdate = lice_rdate;
   }
   public String getLice_level() {
      return lice_level;
   }
   public void setLice_level(String lice_level) {
      this.lice_level = lice_level;
   }
   public String getCare_organ() {
      return care_organ;
   }
   public void setCare_organ(String care_organ) {
      this.care_organ = care_organ;
   }
   public String getCare_sdate() {
      return care_sdate;
   }
   public void setCare_sdate(String care_sdate) {
      this.care_sdate = care_sdate;
   }
   public String getCare_edate() {
      return care_edate;
   }
   public void setCare_edate(String care_edate) {
      this.care_edate = care_edate;
   }
   public String getCare_work() {
      return care_work;
   }
   public void setCare_work(String care_work) {
      this.care_work = care_work;
   }
   public String getCare_posi() {
      return care_posi;
   }
   public void setCare_posi(String care_posi) {
      this.care_posi = care_posi;
   }
   public String getSkill_pname() {
      return skill_pname;
   }
   public void setSkill_pname(String skill_pname) {
      this.skill_pname = skill_pname;
   }
   public String getSkill_sdate() {
      return skill_sdate;
   }
   public void setSkill_sdate(String skill_sdate) {
      this.skill_sdate = skill_sdate;
   }
   public String getSkill_edate() {
      return skill_edate;
   }
   public void setSkill_edate(String skill_edate) {
      this.skill_edate = skill_edate;
   }
   public String getSkill_comp() {
      return skill_comp;
   }
   public void setSkill_comp(String skill_comp) {
      this.skill_comp = skill_comp;
   }
   public String getSkill_posi() {
      return skill_posi;
   }
   public void setSkill_posi(String skill_posi) {
      this.skill_posi = skill_posi;
   }
   public String getSkill_os() {
      return skill_os;
   }
   public void setSkill_os(String skill_os) {
      this.skill_os = skill_os;
   }
   public String getSkill_lang() {
      return skill_lang;
   }
   public void setSkill_lang(String skill_lang) {
      this.skill_lang = skill_lang;
   }
   public String getSkill_db() {
      return skill_db;
   }
   public void setSkill_db(String skill_db) {
      this.skill_db = skill_db;
   }
   public String getSkill_tool() {
      return skill_tool;
   }
   public void setSkill_tool(String skill_tool) {
      this.skill_tool = skill_tool;
   }
   public String getSkill_fram() {
      return skill_fram;
   }
   public void setSkill_fram(String skill_fram) {
      this.skill_fram = skill_fram;
   }
   public String getSkill_etc() {
      return skill_etc;
   }
   public void setSkill_etc(String skill_etc) {
      this.skill_etc = skill_etc;
   }

   
   
}