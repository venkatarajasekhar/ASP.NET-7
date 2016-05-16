using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Products
/// </summary>
public class Products
{
    [XmlElement("Product")]
    public Product[] content { get; set; }

    public Products()
    {
       
    }
}