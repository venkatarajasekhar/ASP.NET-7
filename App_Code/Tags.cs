using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Tags
/// </summary>
public class Tags
{
    [XmlElement("Tag")]
    public string[] content { get; set; }

    public Tags()
    {

    }

    public override string ToString()
    {
        System.Text.StringBuilder sb = new  System.Text.StringBuilder();
        for (int i = 0; i < content.Length; ++i)
        {
            sb.Append(content[i]).Append(", ");
        }
        if (content.Length > 0)
        {
            sb.Length = sb.Length - 2;
        }
        return sb.ToString();
    }

}