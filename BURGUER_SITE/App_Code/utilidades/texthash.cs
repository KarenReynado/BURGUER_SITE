using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

/// <summary>
/// Descripción breve de texthash
/// </summary>
public class texthash
{
    public texthash()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static string Encriptar(string pass)
    {
        using (SHA1Managed sha1 = new SHA1Managed())
        {
            var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(pass));
            var sb = new StringBuilder(hash.Length * 2);
            foreach (byte item in hash)
            {
                sb.Append(item.ToString("X2"));

            }
            return sb.ToString();

        }


    }
}