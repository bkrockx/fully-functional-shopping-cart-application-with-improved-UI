package Service;

import java.util.*;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import Model.*;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Blob;

import org.springframework.web.multipart.MultipartFile;

@Service("itemService")
@Transactional
public class ItemService {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	public List<Item> getAll(Integer categoryId){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Category as c WHERE c.id="+categoryId);
		Category category = (Category)query.uniqueResult();
		return new ArrayList<Item>(category.getItem());
	}
	
	public List<Item> getAllItem(Integer userId){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM User as u WHERE u.id="+userId);
		User user = (User)query.uniqueResult();
		return new ArrayList<Item>(user.getItem());
	}
	
	public List<Item> getAllItemBilled(Integer billableId){
		Session session = sessionFactory.getCurrentSession();
		
		String sql = "SELECT billableitem.ITEM_ID FROM billableitem  WHERE billableitem.BILLABLE_ID="+billableId;
		SQLQuery query = session.createSQLQuery(sql);
		
		List<Integer> results = (List<Integer>)query.list();
		
		List<Item> items = new ArrayList<Item>();
		for(int i: results){
			Session session1 = sessionFactory.getCurrentSession();
			Item item = (Item) session1.get(Item.class,i);
			items.add(item);
		}
		return items;
		
		/*
		Query query = session.createQuery("FROM billableitem as b WHERE b.id="+billableId);
		billable bill = (billable)query.uniqueResult();
		return new ArrayList<Item>(bill.getItem());
		*/
	}


	public List<Item>getAll(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Item");
		return query.list();
	}
	
	public Item get(Integer itemId){
		Session session = sessionFactory.getCurrentSession();
		Item item = (Item)session.get(Item.class,itemId);
		return item;
	}
	
	public void add(Integer categoryId,Item item,MultipartFile file) throws IOException{
		
		Session session = sessionFactory.getCurrentSession();
        Item item1 = new Item();
        item1.setItemImage(file.getBytes());
        item1.setItemId(item.getItemId());
        item1.setItemName(item.getItemName());
        item1.setItemContent(item.getItemContent());
        item1.setItemPrice(item.getItemPrice());
 
		session.save(item1);
		
		Category category1 = (Category)session.get(Category.class,categoryId);
		category1.getItem().add(item1);
		
		session.save(category1);
	}
	
	// To save item  //
	public void saveItem(Item item){
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(item);
	}
	
	// returns list of useritem //
	public List<useritem> getUserItems(int userId){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM useritem where user.userId=:userid");
		query.setParameter("userid", userId);
		return query.list();
	}
	
	// To add item to user // 
	public void addItemToUser(int userId,int itemId){
		Session session = sessionFactory.getCurrentSession();
		
		User user1 = (User)session.get(User.class,userId);
		Item item2 = (Item)session.get(Item.class,itemId);
		
		/*
		List<useritem>useritems = user1.getUseritem();
		
		for(useritem ui:useritems){
			ui.setItem(item2);
		}
		
		session.saveOrUpdate(user1);
		*/
		
		System.out.println(itemId);
		System.out.println(userId);
		
		useritem useritemObj = new useritem();
		useritemObj.setItem(item2);
		useritemObj.setUser(user1);
		
		
		session.save(useritemObj);
		
	}
	
	
	public void removeAllItems(Integer userId){
		/*
		Session session = sessionFactory.getCurrentSession();
		User user3 = (User) session.get(User.class,userId);
		user3.getItem().clear();
		*/
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete useritem where user.userId=:userid");
		query.setParameter("userid", userId);
		int result = query.executeUpdate();
		
	}
	
	public void delete(Integer itemId){
		Session session = sessionFactory.getCurrentSession();
		
		Item item = (Item)session.get(Item.class,itemId);
		session.delete(item);
	}
	
	public void edit(Item item,MultipartFile file) throws IOException{
		Session session = sessionFactory.getCurrentSession();
		Item item2 = (Item)session.get(Item.class,item.getItemId());
		
		item2.setItemName(item.getItemName());
		item2.setItemContent(item.getItemContent());
		//Item2.setItemImage(Item.getItemImage());
		item2.setItemPrice(item.getItemPrice());
		item2.setItemImage(file.getBytes());
		session.save(item2);
	}
	
}


