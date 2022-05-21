using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLTIPO_EMPLEADO
/// </summary>
public class BLL_TIPOEMPLEADO
{
    public BLL_TIPOEMPLEADO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_TIPOEMPLEADO> MostrarTodos()
    {
        List<DTO_TIPOEMPLEADO> listaTipoEmpleado = new List<DTO_TIPOEMPLEADO>();
        TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter adaptador = new TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter();
        TIPOEMPLEADODTS.TipoEmpleadoDataTable tabla = adaptador.GetDataTIPOEMPLEADO();
        foreach (TIPOEMPLEADODTS.TipoEmpleadoRow filas in tabla)
        {
            listaTipoEmpleado.Add(RowRoles(filas));
        }
        return listaTipoEmpleado;
    }
    private static DTO_TIPOEMPLEADO RowRoles(TIPOEMPLEADODTS.TipoEmpleadoRow filas)
    {
        DTO_TIPOEMPLEADO objPEDIDO = new DTO_TIPOEMPLEADO();
        objPEDIDO.ID = filas.ID;
        objPEDIDO.descripcion = filas.Descripcion;
        objPEDIDO.sueldo = filas.Sueldo;

        return objPEDIDO;
    }
    public static DTO_TIPOEMPLEADO MostrarTodosID(int cod1)
    {
        TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter adaptador = new TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter();
        TIPOEMPLEADODTS.TipoEmpleadoDataTable tabla = adaptador.GetTIPOEMPLEADOID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void InsertTipoEmpleado(string descripcion, decimal sueldo)
    {
        TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter adaptador = new TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter();
        adaptador.Insert(descripcion, sueldo);
    }
    public static void borrarTipoEmpleado(int codTipoEmpleado)
    {
        TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter adaptador = new TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter();
        adaptador.Delete(codTipoEmpleado);
    }
    public static void actualizarTipoEmpleado(string descripcion, decimal sueldo, int id)
    {
        TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter adaptador = new TIPOEMPLEADODTSTableAdapters.TipoEmpleadoTableAdapter();
        adaptador.Update(descripcion, sueldo, id);
    }
}