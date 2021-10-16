package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import model.Cart;
import model.Orders;
import model.Product;

public class OrdersDAO {
	// insert information of Order to data source, that including list of
		// products in cart (c) and information of buyer in Orders o
		public void insertOrder(Orders o, Cart c) throws Exception {
			
			DBContext db = new DBContext();
			Connection conn = db.getConnection();
			PreparedStatement ps = null;
			String query = null;
			
			
			//Insert data to orders_detail table of datasource
			query = "insert into Orders(user_mail,order_status,order_date,order_discount_code,order_address)"
					+ "values(?,?,?,?,?)";
			ps=conn.prepareStatement(query);
			ps.setString(1, o.getUserMail());
			ps.setInt(2, 2);
			ps.setDate(3, java.sql.Date.valueOf(java.time.LocalDate.now()));
			ps.setString(4, o.getDiscount());
			ps.setString(5, o.getAddress());
			
			ps.executeUpdate();
			
			//Get the last order_id
			int orderID = 0;
			query="select max(order_id) from orders";
			ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			rs.next();
			orderID = rs.getInt(1);
			
			//Insert data to orders table of datasource
			
			query = "insert into Orders_detail(order_id,product_id,amount_product,price_product)"
						+ "values(?,?,?,?)";
			for(int i=0;i<c.getItems().size();i++) {
				Product p = c.getItems().get(i);
				
				ps = conn.prepareStatement(query);
				ps.setInt(1, orderID);
				ps.setInt(2, p.getId());
				ps.setInt(3,p.getNumber());
				ps.setFloat(4, p.getPrice());
				
				ps.executeUpdate();
			}
			
			conn.close();
		
		}
}
