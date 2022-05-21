using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DTOPRODUCTO
/// </summary>
public class DTO_PRODUCTO
{
    public DTO_PRODUCTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public int TIPO_PRODUCTO { get; set; }
    public decimal Precio { get; set; }
    public string  Descripcion { get; set; }
    public string imagen { get; set; }

}