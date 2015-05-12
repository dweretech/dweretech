package com.zetcode;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class BooksWorker {

  static final String url = "jdbc:mysql://localhost:3306/certdb";

  public static void Insert(String author, String title, 
          String year, String remark) {
      try {

          String insert = "INSERT INTO books(author, title, year, remark)" +
                  "VALUES (?, ?, ?, ?)";

          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, "root", "dwere4u");
 
          PreparedStatement ps = con.prepareStatement(insert);

          ps.setString(1, author);
          ps.setString(2, title);
          ps.setString(3, year);
          ps.setString(4, remark);
          ps.executeUpdate();
          con.close();

      } catch (Exception ex) {
          Logger.getLogger(BooksWorker.class.getName()).log(
                           Level.SEVERE, null, ex);
      }
  }

  public static List GetBooks() {

      List<String> list = new ArrayList<String>();

      try {

          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, "root", "dwere4u");

          Statement stmt = con.createStatement();

          ResultSet result = stmt.executeQuery("SELECT * FROM books");

          while(result.next())
          {
             list.add(result.getString("id"));
             list.add(result.getString("author"));
             list.add(result.getString("title"));
             list.add(result.getString("year"));
             list.add(result.getString("remark"));
          } 

          con.close();

      } catch (Exception ex) {
          Logger.getLogger(BooksWorker.class.getName()).log( 
                           Level.SEVERE, null, ex);
      }
          return list;
  }

  public static void Delete(String id) {
      try {
          String delete = "DELETE from books WHERE id = ?";

          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, "root", "dwere4u");
          PreparedStatement ps = con.prepareStatement(delete);

          ps.setString(1, id);
          ps.executeUpdate();
          con.close();

      } catch (Exception ex) {
          Logger.getLogger(BooksWorker.class.getName()).log( 
             Level.SEVERE, null, ex);
      }
  }
}
