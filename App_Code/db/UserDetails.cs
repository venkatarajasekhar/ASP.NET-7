using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserDetails
/// </summary>
public class UserDetails
{
    public UserDetails(int id, string firstname, string lastname, int age, string username)
    {
        Id = id;
        SetData(firstname, lastname, age, username);
    }

    public UserDetails(string firstname, string lastname, int age, string username)
    {
        Id = -1;
        SetData(firstname, lastname, age, username);
    }
    public int Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public int Age { get; set; }
    public string UserName { get; set; }
    private void SetData(string firstname, string lastname, int age, string username)
    {
        FirstName = firstname;
        LastName = lastname;
        Age = age;
        UserName = username;
    }
}