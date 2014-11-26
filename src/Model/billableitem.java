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
@Table(name="billableitem1")
public class billableitem {
	
	/*
	@Id
	@Column(name="billableitemId")
	@GeneratedValue
	private Integer billableitemId;
	
	@Column(name="billable_id")
	private String billable_id;
	
	@Column(name="item_id")
	private String item_id;

	public Integer getBillableitemId() {
		return billableitemId;
	}

	public void setBillableitemId(Integer billableitemId) {
		this.billableitemId = billableitemId;
	}

	public String getBillable_id() {
		return billable_id;
	}

	public void setBillable_id(String billable_id) {
		this.billable_id = billable_id;
	}

	public String getItem_id() {
		return item_id;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	*/
}
