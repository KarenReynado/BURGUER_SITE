using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLTIPO_PRODUCTO
/// </summary>
public class BLL_TIPOPRODUCTO
{
    public BLL_TIPOPRODUCTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_TIPOPRODUCTO> MostrarTodos()
    {
        List<DTO_TIPOPRODUCTO> listaTipoProducto = new List<DTO_TIPOPRODUCTO>();
        TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter adaptador = new TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter();
        TIPOPRODUCTODTS.TipoProductoDataTable tabla = adaptador.GetDataTIPOPRODUCTO();
        foreach (TIPOPRODUCTODTS.TipoProductoRow filas in tabla)
        {
            listaTipoProducto.Add(RowRoles(filas));
        }
        return listaTipoProducto;
    }
    private static DTO_TIPOPRODUCTO RowRoles(TIPOPRODUCTODTS.TipoProductoRow filas)
    {
        DTO_TIPOPRODUCTO objPEDIDO = new DTO_TIPOPRODUCTO();
        objPEDIDO.ID = filas.ID;
        objPEDIDO.descripcion = filas.Descripcion;

        return objPEDIDO;
    }
    public static DTO_TIPOPRODUCTO MostrarTodosID(int cod1)
    {
        TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter adaptador = new TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter();
        TIPOPRODUCTODTS.TipoProductoDataTable tabla = adaptador.GetTIPOPRODUCTOID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void InsertTipoProducto(string descripcion)
    {
        TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter adaptador = new TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter();
        adaptador.Insert(descripcion);
    }
    public static void borrarTipoProducto(int codTipoProducto)
    {
        TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter adaptador = new TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter();
        adaptador.Delete(codTipoProducto);
    }
    public static void actualizarTipoProducto(string descripcion, int id)
    {
        TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter adaptador = new TIPOPRODUCTODTSTableAdapters.TipoProductoTableAdapter();
        adaptador.Update(descripcion, id);
    }
}