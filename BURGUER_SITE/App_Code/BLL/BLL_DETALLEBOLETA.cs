using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLDETALLE_BOTELLA
/// </summary>
public class BLL_DETALLEBOLETA
{
    public BLL_DETALLEBOLETA()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_DETALLEBOLETA> MostrarTodos()
    {
        List<DTO_DETALLEBOLETA> listaBoleta = new List<DTO_DETALLEBOLETA>();
        DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter adaptador = new DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter();
        DETALLEBOLETADTS.DetalleBoletaDataTable tabla = adaptador.GetDataDetalleBoleta();
        foreach (DETALLEBOLETADTS.DetalleBoletaRow filas in tabla)
        {
            listaBoleta.Add(RowRoles(filas));
        }
        return listaBoleta;
    }
    private static DTO_DETALLEBOLETA RowRoles(DETALLEBOLETADTS.DetalleBoletaRow filas)
    {
        DTO_DETALLEBOLETA objDBOLETA = new DTO_DETALLEBOLETA();
        objDBOLETA.ID = filas.ID;
        objDBOLETA.ID_ModoPago = filas.IdModoDePago;
        objDBOLETA.ID_PEDIDO = filas.IdPedido;
        objDBOLETA.Monto_Total = filas.MontoTotal;

        return objDBOLETA;
    }
    public static DTO_DETALLEBOLETA MostrarTodosID(int cod1, int cod2)
    {
        DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter adaptador = new DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter();
        DETALLEBOLETADTS.DetalleBoletaDataTable tabla = adaptador.GetDetalleBoleta(cod1, cod2);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void insertarDetalle(int id_pedido, decimal monto_total, int id_modopago)
    {
        DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter adaptador = new DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter();
        adaptador.Insert(id_pedido, monto_total, id_modopago);
    }
    public static void borrarDetalle(int codPedido)
    {
        DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter adaptador = new DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter();
        adaptador.Delete(codPedido);
    }
    public static void actualizarDetalle(int id_pedido, decimal monto_total, int id_modopago, int ID)
    {
        DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter adaptador = new DETALLEBOLETADTSTableAdapters.DetalleBoletaTableAdapter();
        adaptador.Update(id_modopago, monto_total, id_pedido, ID);
    }
}