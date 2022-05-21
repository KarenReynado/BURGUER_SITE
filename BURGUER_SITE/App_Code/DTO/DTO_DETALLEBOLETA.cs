using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DTODETALLE_BOTELLA
/// </summary>
public class DTO_DETALLEBOLETA
{
    public DTO_DETALLEBOLETA()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //

    }
    public int ID { get; set; }
    public int ID_PEDIDO { get; set; }
    public decimal Monto_Total { get; set; }
    public int ID_ModoPago { get; set; }
   
}