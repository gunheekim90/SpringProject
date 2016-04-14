package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

public class ItemDao {

	private JdbcTemplate jdbcTemplate;
	private RowMapper<Item> itemRowMapper = new RowMapper<Item>() {
		@Override
		public Item mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Item item = new Item(rs.getString("ItemUser"),
					rs.getString("ItemUserEmail"),
					rs.getDate("ItemRegisterDate"),
					rs.getString("ItemTheme"),
					rs.getString("ItemInfo"),
					rs.getString("ItemSize"),
					rs.getString("ItemStyle"),
					rs.getString("ItemImage"),
					rs.getString("ItemPrice"));
			item.setItemId(rs.getLong("ItemId"));
			return item;
		}
	};

	public ItemDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public Item selectByEmail(String email) {
		List<Item> results = jdbcTemplate.query(
				"select * from item where ItemUserEmail = ?",
				itemRowMapper,
				email);

		return results.isEmpty() ? null : results.get(0);
	}

	public void insert(final Item item) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) 
					throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into item (ItemUser, ItemUserEmail, ItemRegisterDate, ItemTheme, ItemInfo,ItemSize,ItemStyle,ItemImage,ItemPrice)"+
						"values (?, ?, ?, ?, ?, ?, ?, ?, ?)",
						new String[] {"ItemId"});
				pstmt.setString(1,  item.getItemUser());
				pstmt.setString(2,  item.getItemUserEmail());
				pstmt.setTimestamp(3,  
						new Timestamp(item.getItemRegisterDate().getTime()));
				pstmt.setString(4, item.getItemTheme());
				pstmt.setString(5, item.getItemInfo());
				pstmt.setString(6, item.getItemSize());
				pstmt.setString(7, item.getItemStyle());
				pstmt.setString(8, item.getItemImage());
				pstmt.setString(9, item.getItemPrice());
				return pstmt;
			}
		}, keyHolder);
		Number keyValue = keyHolder.getKey();
		item.setItemId(keyValue.longValue());
	}

	public void update(Item item) {
		jdbcTemplate.update("update item set ItemTheme = ?, ItemInfo = ?, ItemSize = ?,ItemStyle = ?, ItemImage = ?, ItemPrice = ? where ItemId = ?",
				item.getItemTheme(), item.getItemInfo(), item.getItemSize(),item.getItemStyle(),item.getItemImage(), item.getItemPrice(), item.getItemId());
	}

	public List<Item> selectAll() {
		List<Item> results = jdbcTemplate.query("select * from ITEM",
				itemRowMapper);
		return results;
	}

	public int count() {
		Integer count = jdbcTemplate.queryForObject("select count(*) from item", Integer.class);
		return count;
	}
	public int nextId() {
		Integer next = jdbcTemplate.queryForObject("select ItemId from item order by ItemId desc limit 1",Integer.class);
		return next;
	}

	public Item selectById(Long ItemId) {
		List<Item> results = jdbcTemplate.query(
				"select * from item where ID = ?",
				itemRowMapper,
				ItemId);

		return results.isEmpty() ? null : results.get(0);
	}


}
