package coche;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CochesService {
    Connection conn;
    public CochesService(Connection conn){
        this.conn = conn;
    }

    public ArrayList<coche> requestAll() throws SQLException{
        Statement statement = null;
        ArrayList<coche> result = new ArrayList<coche>();
        statement = this.conn.createStatement();   
        String sql = "SELECT id, marca, modelo,color,matricula FROM concesionario";
        // Ejecución de la consulta
        ResultSet querySet = statement.executeQuery(sql);
        // Recorrido del resultado de la consulta
        while(querySet.next()) {
            int id = querySet.getInt("id");
            String marca = querySet.getString("marca");
            String modelo = querySet.getString("modelo");
            String color = querySet.getString("color");
            String matricula = querySet.getString("matricula");
            result.add(new coche(id, marca,modelo,color,matricula));
        } 
        statement.close();    
        return result;
    }

    public coche requestById(int id) throws SQLException{
        Statement statement = null;
        coche result = null;
        statement = this.conn.createStatement();    
        String sql = String.format("SELECT id, marca, modelo,color,matricula FROM concesionario WHERE id=%d", id);
        // Ejecución de la consulta
        ResultSet querySet = statement.executeQuery(sql);
        // Recorrido del resultado de la consulta
        if(querySet.next()) {
            String marca = querySet.getString("marca");
            String modelo = querySet.getString("modelo");
            String color = querySet.getString("color");
            String matricula = querySet.getString("matricula");
            result = new coche(id, marca,modelo,color,matricula);
        }
        statement.close();    
        return result;
    }

    public long create(String nombre, String apellidos) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("INSERT INTO alumnos (nombre, apellidos) VALUES ('%s', '%s')", nombre, apellidos);
        // Ejecución de la consulta
        int affectedRows = statement.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
        if (affectedRows == 0) {
            throw new SQLException("Creating user failed, no rows affected.");
        }
        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                long id = generatedKeys.getLong(1);
                statement.close();
                return id;
            }
            else {
                statement.close();
                throw new SQLException("Creating user failed, no ID obtained.");
            }
        }
    }

    public int update(int id, String cambio, String opcion) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("UPDATE concesionario SET %s = '%s' WHERE id=%d", opcion, cambio, id);
        // Ejecución de la consulta
        int affectedRows = statement.executeUpdate(sql);
        statement.close();
        if (affectedRows == 0)
            throw new SQLException("Updating user failed, no rows affected.");
        else
            return affectedRows;
    }

    public boolean delete(long id) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("DELETE FROM concesionario WHERE id=%d", id);
        // Ejecución de la consulta
        int result = statement.executeUpdate(sql);
        statement.close();
        return result==1;
    }

    

    
}