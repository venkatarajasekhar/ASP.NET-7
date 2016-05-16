using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;
using System.Linq;
/// <summary>
/// Summary description for ProductRepository
/// </summary>
public class ProductRepository
{
    private const string FileName = "product.xml";
    private static readonly ProductRepository instance = new ProductRepository();

    private ProductRepository()
    {
       
    }

    public static ProductRepository Instance
    {
        get { return instance; }
    }

    public Products GetProducts()
    {
        Products products = null;
    XmlSerializer ser = new XmlSerializer(typeof(Products));
        using (XmlReader reader = XmlReader.Create(HttpContext.Current.Server.MapPath(FileName)))
        {
            products = (Products)ser.Deserialize(reader);

        }
        return products;
    }

    public Product FindById(int id)
    {
        return GetProducts().content.Where(product => product.Id == id).First();
    }

}