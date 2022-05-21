using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLPEDIDO
/// </summary>
public class BLL_PEDIDO
{
    public BLL_PEDIDO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_PEDIDO> MostrarTodos()
    {
        List<DTO_PEDIDO> listaPedido = new List<DTO_PEDIDO>();
        PEDIDODTSTableAdapters.PedidoTableAdapter adaptador = new PEDIDODTSTableAdapters.PedidoTableAdapter();
        PEDIDODTS.PedidoDataTable tabla = adaptador.GetDataPEDIDO();
        foreach (PEDIDODTS.PedidoRow filas in tabla)
        {
            listaPedido.Add(RowRoles(filas));
        }
        return listaPedido;
    }
    private static DTO_PEDIDO RowRoles(PEDIDODTS.PedidoRow filas)
    {
        DTO_PEDIDO objPEDIDO = new DTO_PEDIDO();
        objPEDIDO.ID = filas.ID;
        objPEDIDO.ATENDIDO = filas.Atendido;
        objPEDIDO.DETALLE = filas.Detalle;
        objPEDIDO.ID_EMPLEADO = filas.ID_Usuario;

        return objPEDIDO;
    }
    public static DTO_PEDIDO MostrarTodosID(int cod1)
    {
        PEDIDODTSTableAdapters.PedidoTableAdapter adaptador = new PEDIDODTSTableAdapters.PedidoTableAdapter();
        PEDIDODTS.PedidoDataTable tabla = adaptador.GetPEDIDOSID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void InsertPedido(bool atendidos, string detalle, int id_usuario)
    {
        PEDIDODTSTableAdapters.PedidoTableAdapter adaptador = new PEDIDODTSTableAdapters.PedidoTableAdapter();
        adaptador.Insert(atendidos, detalle, id_usuario);
    }
    public static void borrarPedido(int codPedido)
    {
        PEDIDODTSTableAdapters.PedidoTableAdapter adaptador = new PEDIDODTSTableAdapters.PedidoTableAdapter();
        adaptador.Delete(codPedido);
    }
    public static void actualizarPedido(bool atendidos, string detalle, int id_usuario, int id)
    {
        PEDIDODTSTableAdapters.PedidoTableAdapter adaptador = new PEDIDODTSTableAdapters.PedidoTableAdapter();
        adaptador.Update(atendidos, detalle, id_usuario, id);
    }
}