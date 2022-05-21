using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLPEDIDOS
/// </summary>
public class BLL_PRODUCTO
{
    public BLL_PRODUCTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_PRODUCTO> MostrarTodos()
    {
        List<DTO_PRODUCTO> listaProducto = new List<DTO_PRODUCTO>();
        PRODUCTODTSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODTSTableAdapters.ProductoTableAdapter();
        PRODUCTODTS.ProductoDataTable tabla = adaptador.GetDataPRODUCTO();
        foreach (PRODUCTODTS.ProductoRow filas in tabla)
        {
            listaProducto.Add(RowRoles(filas));
        }
        return listaProducto;
    }
    private static DTO_PRODUCTO RowRoles(PRODUCTODTS.ProductoRow filas)
    {
        DTO_PRODUCTO objPEDIDO = new DTO_PRODUCTO();
        objPEDIDO.ID = filas.ID;
        objPEDIDO.NOMBRE = filas.Nombre;
        objPEDIDO.TIPO_PRODUCTO = filas.IdTipoProducto;
        objPEDIDO.Precio = filas.Precio;
        objPEDIDO.Descripcion = filas.Descripcion;
        objPEDIDO.imagen = filas.imagen;

        return objPEDIDO;
    }
    public static DTO_PRODUCTO MostrarTodosID(int cod1)
    {
        PRODUCTODTSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODTSTableAdapters.ProductoTableAdapter();
        PRODUCTODTS.ProductoDataTable tabla = adaptador.GetPRODUSTOID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    public static void InsertProducto(string nombre, int tipoproducto, decimal precio, string descripcion, string imagen)
    {
        PRODUCTODTSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODTSTableAdapters.ProductoTableAdapter();
        adaptador.Insert(nombre, tipoproducto, precio, descripcion, imagen);
    }
    public static void borrarProducto(int codProducto)
    {
        PRODUCTODTSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODTSTableAdapters.ProductoTableAdapter();
        adaptador.Delete(codProducto);
    }
    public static void actualizarProducto(string nombre, int tipoproducto, decimal precio, string descripcion, string imagen, int id)
    {
        PRODUCTODTSTableAdapters.ProductoTableAdapter adaptador = new PRODUCTODTSTableAdapters.ProductoTableAdapter();
        adaptador.Update(nombre, tipoproducto, precio, descripcion, imagen, id);
    }
}