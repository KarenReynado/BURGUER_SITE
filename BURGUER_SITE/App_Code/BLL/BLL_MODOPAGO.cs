using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLMODO_PAGO
/// </summary>
public class BLL_MODOPAGO
{
    public BLL_MODOPAGO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_MODOPAGO> MostrarTodos()
    {
        List<DTO_MODOPAGO> listaPago = new List<DTO_MODOPAGO>();
        MODOPAGODTSTableAdapters.ModoDePagoTableAdapter adaptador = new MODOPAGODTSTableAdapters.ModoDePagoTableAdapter();
        MODOPAGODTS.ModoDePagoDataTable tabla = adaptador.GetDataMODOPAGO();
        foreach (MODOPAGODTS.ModoDePagoRow filas in tabla)
        {
            listaPago.Add(RowRoles(filas));
        }
        return listaPago;
    }
    private static DTO_MODOPAGO RowRoles(MODOPAGODTS.ModoDePagoRow filas)
    {
        DTO_MODOPAGO objMPAGO = new DTO_MODOPAGO();
        objMPAGO.ID = filas.ID;
        objMPAGO.Descripcion = filas.Descripcion;

        return objMPAGO;
    }
    public static DTO_MODOPAGO MostrarTodosID(string cod1)
    {
        MODOPAGODTSTableAdapters.ModoDePagoTableAdapter adaptador = new MODOPAGODTSTableAdapters.ModoDePagoTableAdapter();
        MODOPAGODTS.ModoDePagoDataTable tabla = adaptador.GetMODOPAGOID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void insertar(string descripcion)
    {
        MODOPAGODTSTableAdapters.ModoDePagoTableAdapter adaptador = new MODOPAGODTSTableAdapters.ModoDePagoTableAdapter();
        adaptador.Insert(descripcion);
    }
    public static void borrar(int id)
    {
        MODOPAGODTSTableAdapters.ModoDePagoTableAdapter adaptador = new MODOPAGODTSTableAdapters.ModoDePagoTableAdapter();
        adaptador.Delete(id);
    }
    public static void actualizar(string descripcion, int ID)
    {
        MODOPAGODTSTableAdapters.ModoDePagoTableAdapter adaptador = new MODOPAGODTSTableAdapters.ModoDePagoTableAdapter();
        adaptador.Update(descripcion, ID);
    }
}