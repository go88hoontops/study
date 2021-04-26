// DTO(Data Transfer Object)

package model;

import java.sql.Timestamp;

public class MemberBean {
	private String id;
	private String m_pw ;
	private String m_nick ;
	private String m_name ;
	private String m_birth;
	private String m_phone;
	private String m_mail ;
	private String m_adds;
	private Timestamp m_join;
	private Timestamp m_conn;
	
	public String getId() {
		return id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public String getM_nick() {
		return m_nick;
	}
	public String getM_name() {
		return m_name;
	}
	public String getM_birth() {
		return m_birth;
	}
	public String getM_phone() {
		return m_phone;
	}
	public String getM_mail() {
		return m_mail;
	}
	public String getM_adds() {
		return m_adds;
	}
	public Timestamp getM_join() {
		return m_join;
	}
	public Timestamp getM_conn() {
		return m_conn;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}
	public void setM_adds(String m_adds) {
		this.m_adds = m_adds;
	}
	public void setM_join(Timestamp m_join) {
		this.m_join = m_join;
	}
	public void setM_conn(Timestamp m_conn) {
		this.m_conn = m_conn;
	}
	
}
