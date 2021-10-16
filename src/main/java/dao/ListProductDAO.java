package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ListProductDAO {
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	// return the list of product by product name
	public List<Product> search(String characters) throws Exception {
		
		List<Product> listProduct = new ArrayList<>();
		String query = "select * from products where product_name like ?";
		
		try {
			DBContext db = new DBContext();
			conn = db.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%"+characters+"%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				listProduct.add(new Product(rs.getInt(1), //product_id
						rs.getString(2), //product_name
						rs.getString(3), //product_des
						rs.getFloat(4), //product_price
						rs.getString(5), //product_img_source
						rs.getString(6), //product_type
						rs.getString(7),1)); //product_brand
			}
			
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listProduct;
	}
	
	//test
	public static void main(String[] args) throws Exception {
		ListProductDAO dao = new ListProductDAO();
		Product p = dao.getProduct("1");
		System.out.println(p);

	}


	// get the product by id
	public Product getProduct(String characters) throws Exception {
		
		Product product = null;
		String query = "select * from products where product_id=?";
		
		try {
			DBContext db = new DBContext();
			conn = db.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, characters);
			
			rs = ps.executeQuery();

			while(rs.next()) {
			product = new Product(rs.getInt(1), //product_id
					rs.getString(2), //product_name
					rs.getString(3), //product_des
					rs.getFloat(4), //product_price
					rs.getString(5), //product_img_source
					rs.getString(6), //product_type
					rs.getString(7),1); //product_brand
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return product;
	}
}
