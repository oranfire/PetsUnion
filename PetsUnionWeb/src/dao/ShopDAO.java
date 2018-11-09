package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.ServiceBean;
import bean.ShopBean;
import db.DBUtils;
import tools.StaticPara;

public class ShopDAO {

    /**
     * check whether the shop exists (can login)
     *
     * @param name         "shop name"
     * @param passwordHash "sha256 on password"
     * @return whether login successful
     */
    public static int login(String name, String passwordHash) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet result = null;

        String sql = "SELECT name, password FROM shops WHERE name=?";

        try {
            conn = DBUtils.getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            result = pstmt.executeQuery();

            if (result.next()) {
                if (passwordHash.equals(result.getString("password"))) {
                    return StaticPara.LoginRegisterPara.success;
                }
            } else {
                return StaticPara.LoginRegisterPara.loginWrongPassword;
            }

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return StaticPara.LoginRegisterPara.sqlError;
        } finally {
            DBUtils.closeAll(result, pstmt, conn);
        }
        return StaticPara.LoginRegisterPara.unknown;
    }

    /**
     * write the new shop into database
     *
     * @param name         "shop name"
     * @param passwordHash "sha256 on password"
     * @return whether the register is successful
     */

    public static int register(String name, String passwordHash) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet result = null;

        String sqlSelect = "SELECT name FROM shops WHERE name=?";

        try {
            conn = DBUtils.getConn();

            pstmt = conn.prepareStatement(sqlSelect);
            pstmt.setString(1, name);
            result = pstmt.executeQuery();

            if (result.next()) return StaticPara.LoginRegisterPara.registerExistsName;

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return StaticPara.LoginRegisterPara.sqlError;
        } finally {
            DBUtils.closeAll(result, pstmt, conn);
        }

        String sqlInsert = "INSERT INTO shops (name, password) VALUES(?,?)";

        try {
            conn = DBUtils.getConn();

            pstmt = conn.prepareStatement(sqlInsert);
            pstmt.setString(1, name);
            pstmt.setString(2, passwordHash);
            pstmt.executeUpdate();

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return StaticPara.LoginRegisterPara.sqlError;
        } finally {
            DBUtils.closeAll(result, pstmt, conn);
        }
        return StaticPara.LoginRegisterPara.success;
    }


    /*
    /**
     * @param petCategory     the category of pet(valid)
     * @param serviceCategory the category of service(valid)
     * @param startTime       the willing start time of service(valid)
     * @param endTime         the willing end time of service(valid)
     * @param pageNo          the page number of results
     * @param numPerPage      the number of results in per page
     * @return the list of service
     */
    /*
    public static List<ServiceBean> getServicesAtPage(int petCategory, int serviceCategory, int startTime, int endTime,
                                                       int pageNo, int numPerPage) {
        List<ServiceBean> servicesList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet result = null;

        String sql = "SELECT shop,start_time,end_time FROM services " +
                "WHERE pet_category=? AND service_category=?";

        try {
            conn = DBUtils.getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, startTime);
            pstmt.setInt(2, endTime);
            result = pstmt.executeQuery();

            while (result.next()) {
                servicesList.add(new ServiceBean(result.getInt("shop"),
                        result.getInt("start_time"),
                        result.getInt("end_time")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(result, pstmt, conn);
        }

        return servicesList;
    }*/


    /**
     * get services provided by a certain shop
     *
     * @param shopID          the ID of shop
     * @param petCategory     the category of pet
     * @param serviceCategory the category of service
     * @return the list of service
     */
    public static List<ServiceBean> getServicesByShop(int shopID, int petCategory, int serviceCategory) {

        List<ServiceBean> servicesList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet result = null;

        String sql = "SELECT start_time,end_time FROM services " +
                "WHERE shop=? AND pet_category = ? AND service_category=?";

        try {
            conn = DBUtils.getConn();

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, shopID);
            pstmt.setInt(2, petCategory);
            pstmt.setInt(3, serviceCategory);
            result = pstmt.executeQuery();

            while (result.next()) {
                servicesList.add(new ServiceBean(shopID,
                        result.getInt("start_time"),
                        result.getInt("end_time")));
            }

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        } finally {
            DBUtils.closeAll(result, pstmt, conn);
        }

        return servicesList;
    }
}
