import java.sql.*;
public class BusDao {
    public void displayBusInfo() throws SQLException {
        String query = "select * from bus";
        Connection con  = BusReser.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next())
        {
            System.out.println("Bus no is : "+rs.getString(1));
            if(rs.getString(2)=="0")
                System.out.println("AC BUS : no ");
            else
                System.out.println("AC BUS : yes ");
            System.out.println("Capacity : "+rs.getString(3));
        }
        System.out.print("-----------------------------------------------");

    }

    public static int getCapacity(int id) throws SQLException
    {   String q = "select capacity from bus where id = "+id;
        Connection c  = BusReser.getConnection();
        Statement st = c.createStatement();
        ResultSet rs = st.executeQuery(q);
        rs.next();
        return Integer.parseInt(rs.getString(1));
    }
}
