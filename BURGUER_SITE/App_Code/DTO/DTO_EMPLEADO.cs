using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DTOEMPLEADO
/// </summary>
public class DTO_EMPLEADO
{
    public DTO_EMPLEADO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public int ID { get; set; }
    public string usuario { get; set; }

    public string contrasenia { get; set; }

    public int ID_TipoEmpleado { get; set; }
    public string Nombre{ get; set; }
    public string Celular { get; set; }
    public string Correo { get; set; }
    public string Direccion { get; set; }
    public decimal Sueldo { get; set; }
    
}