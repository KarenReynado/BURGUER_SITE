using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DTOPEDIDO
/// </summary>
public class DTO_PEDIDO
{
    public DTO_PEDIDO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public bool ATENDIDO { get; set; }
    public string DETALLE { get; set; }
    public int ID_EMPLEADO { get; set; }

}