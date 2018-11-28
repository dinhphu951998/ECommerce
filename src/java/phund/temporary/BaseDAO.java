/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phund.temporary;

import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import phund.dbutils.DBConnection;

/**
 *
 * @author PhuNDSE63159
 */
public abstract class BaseDAO<T> implements Serializable {

    private Class<T> type;

    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public BaseDAO(Class<T> t) {
        this.type = t;
    }

    private void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (pstm != null) {
            pstm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }

    public List<T> get() throws SQLException,
            NamingException, InstantiationException, IllegalAccessException,
            IllegalArgumentException, InvocationTargetException {
        List<T> list = null;
        Field[] fields = type.getDeclaredFields();
        String sql = "select ";
        for (Field field : fields) {
            sql += field.getName();
            if (!field.equals(fields[fields.length - 1])) {
                sql += ", ";
            }
        }
        sql += " from " + type.getSimpleName();
        try {
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            Constructor<T> constructor = getLargestConstructor();
            Object params[] = new Object[fields.length];
            while (rs.next()) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                for (int i = 0; i < params.length; i++) {
                    params[i] = rs.getObject(fields[i].getName());
                }
                T instance = constructor.newInstance(params);
                list.add(instance);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    private Constructor<T> getLargestConstructor() {
        Constructor[] constructors = type.getConstructors();
        int max = 0;
        int index = 0;
        for (int i = 0; i < constructors.length; i++) {
            if (max < constructors[i].getParameterCount()) {
                max = constructors[i].getParameterCount();
                index = i;
            }
        }
        return constructors[index];
    }

    public void add(T entity) throws SQLException, NamingException,
            IllegalArgumentException, IllegalAccessException {
        try {
            String sql = getInsertSQL();
            Field[] fields = type.getDeclaredFields();
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            for (int i = 0; i < fields.length; i++) {
                fields[i].setAccessible(true);
                Object value = fields[i].get(entity);
                pstm.setObject(i + 1, value);
            }
            pstm.executeUpdate();
        } finally {
            closeConnection();
        }
    }

    private String getInsertSQL() {
        String sql = "insert into " + type.getSimpleName() + " (";
        Field[] fields = type.getDeclaredFields();
        for (Field field : fields) {
            sql += field.getName();
            if (!field.equals(fields[fields.length - 1])) {
                sql += ", ";
            }
        }
        sql += ") values(";
        for (int i = 0; i < fields.length; i++) {
            sql += "?";
            if (i != fields.length - 1) {
                sql += ",";
            }
        }
        sql += ")";
        return sql;
    }

    public List<Object[]> executeRawQuery(String sql) throws SQLException, NamingException {
        List<Object[]> list = null;
        try {
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
            int totalColumn = rsmd.getColumnCount();
            while (rs.next()) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                Object object[] = new Object[totalColumn];
                for (int i = 0; i < totalColumn; i++) {
                    object[i] = rs.getObject(i + 1);
                }
                list.add(object);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public void deletePermanently(T entity) throws SQLException, NamingException, 
            IllegalArgumentException, IllegalAccessException {
        try {
            String sql = "delete from " + type.getSimpleName() + " where Id = ?";
            conn = DBConnection.makeConnection();
            pstm = conn.prepareStatement(sql);
            Field[] fields = type.getDeclaredFields();
            for (Field field : fields) {
                if (field.getName().toLowerCase().equals("id")) {
                    field.setAccessible(true);
                    pstm.setObject(1, field.get(entity));
                }
            }
            pstm.executeUpdate();
        }  finally {
            closeConnection();
        }
    }
    
    
}
