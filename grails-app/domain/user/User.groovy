package user

/** 
* @ClassName: User 
* @Description: �û���  
* @author Pony 
* @date 2014��11��8�� ����9:41:09 
*  
*/
class User {
	
	String account		//�˺�
	String passWord		//����
	String nickName		//�ǳ�
	String realName		//���֤����
	String idCard		//���֤����
	String email		//����
	String telepone		//�绰
	String auth			//��ɫȨ��
	
	
	static mapping = {
		version(false)
	}
	
	static constraints = {
		
	}
}
