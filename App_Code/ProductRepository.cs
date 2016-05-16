using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;

/// <summary>
/// Summary description for ProductRepository
/// </summary>
public class ProductRepository
{
    private const string FileName = "product.xml";
    private static readonly ProductRepository instance = new ProductRepository();

    private Products products;
    private ProductRepository()
    {
        XmlSerializer ser = new XmlSerializer(typeof(Products));
        using (XmlReader reader = XmlReader.Create(HttpContext.Current.Server.MapPath(FileName)))
        {
            products = (Products)ser.Deserialize(reader);

        }
    }

    public static ProductRepository Instance
    {
        get { return instance; }
    }

    public Products GetProducts()
    {
        return products;
    } 

}