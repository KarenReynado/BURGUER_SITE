using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DTOTIPO_EMPLEADO
/// </summary>
public class DTO_TIPOEMPLEADO
{
    public DTO_TIPOEMPLEADO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public string descripcion { get; set; }
    public decimal sueldo { get; set; }
}