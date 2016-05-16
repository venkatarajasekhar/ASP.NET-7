using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Product
/// </summary>
[XmlType("Product")]
public class Product
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Price { get; set; }
    public string Category { get; set; }
    public int Amount { get; set; }
    public string Description { get; set; }

    public void SetId(int id)
    {
        if (Id == 0)
        {
            Id = id;
        }
    }

    public Product()
    {
      
    }


}