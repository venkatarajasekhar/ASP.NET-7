using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for UsersDB
/// </summary>
public class UsersDB
{
    private string connectionString;
    public UsersDB()
    {
        connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    }


    public List<UserDetails> users_select_all()
    {
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("users_select_all", connection);
        command.CommandType = System.Data.CommandType.StoredProcedure;
        connection.Open();
        SqlDataReader dr = command.ExecuteReader();
        List<UserDetails> usersList = new List<UserDetails>();

        while (dr.Read())
        {
            UserDetails ud = new UserDetails((int)dr["Id"], (string)dr["FirstName"], (string)dr["LastName"], (int)dr["Age"], (string)dr["UserName"]);
            usersList.Add(ud);
        }

        return usersList;
    }

    public UserDetails users_select_by_id(int id)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("users_select_by_id", connection);
        command.Parameters.AddWithValue("@param1", id);
        command.CommandType = System.Data.CommandType.StoredProcedure;
        connection.Open();
        SqlDataReader dr = command.ExecuteReader();
        if (!dr.HasRows)
            return null;

        dr.Read();

        UserDetails usrDet = new UserDetails((int)dr["Id"], (string)dr["FirstName"], (string)dr["LastName"], (int)dr["Age"], (string)dr["UserName"]);

        return usrDet;
    }

    public void users_delete(int id)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("users_delete", connection);
        command.Parameters.AddWithValue("@param1", id);
        command.CommandType = System.Data.CommandType.StoredProcedure;
        connection.Open();
        command.ExecuteNonQuery();

    }


    public void users_insert(string firstname, string lastname, int age, string username)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("users_insert", connection);
        command.Parameters.AddWithValue("@FirstName", firstname);
        command.Parameters.AddWithValue("@LastName", lastname);
        command.Parameters.AddWithValue("@Age", age);
        command.Parameters.AddWithValue("@UserName", username);
        command.CommandType = System.Data.CommandType.StoredProcedure;
        connection.Open();
        command.ExecuteNonQuery();
    }


    public void users_update(int id, string firstname, string lastname, int age, string username)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("users_update", connection);
        command.Parameters.AddWithValue("@firstname", firstname);
        command.Parameters.AddWithValue("@lastname", lastname);
        command.Parameters.AddWithValue("@age", age);
        command.Parameters.AddWithValue("@username", username);
        command.Parameters.AddWithValue("@id", id);
        command.CommandType = System.Data.CommandType.StoredProcedure;
        connection.Open();
        command.ExecuteNonQuery();
    }

}
