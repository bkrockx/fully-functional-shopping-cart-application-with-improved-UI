package Model;
import java.io.Serializable;

import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="userbillable1")
public class userbillable implements Serializable{

	/*
	@Id
	@Column(name="userbillableId")
	@GeneratedValue
	private Integer userbillableId;
	
	@Column(name="user_id")
	private String user_id;
	
	@Column(name="billable_id")
	private String billable_id;
	
	
	public Integer getUserbillableId() {
		return userbillableId;
	}

	public void setUserbillableId(Integer userbillableId) {
		this.userbillableId = userbillableId;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBillable_id() {
		return billable_id;
	}

	public void setBillable_id(String billable_id) {
		this.billable_id = billable_id;
	}
	*/
}
