using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLEMPLEADO
/// </summary>
public class BLL_EMPLEADO
{
    public BLL_EMPLEADO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTO_EMPLEADO> MostrarTodos()
    {
        List<DTO_EMPLEADO> listaEmpleado = new List<DTO_EMPLEADO>();
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        EMPLEADODTS.EmpleadoDataTable tabla = adaptador.MostrarEmpleados();
        foreach (EMPLEADODTS.EmpleadoRow filas in tabla)
        {
            listaEmpleado.Add(RowRoles(filas));
        }
        return listaEmpleado;
    }
    private static DTO_EMPLEADO RowRoles(EMPLEADODTS.EmpleadoRow filas)
    {
        DTO_EMPLEADO objEMPLEADO = new DTO_EMPLEADO();
        objEMPLEADO.ID = filas.ID;
        objEMPLEADO.usuario = filas.UsuarioEmp;
        objEMPLEADO.contrasenia = filas.Contraseña;
        objEMPLEADO.ID_TipoEmpleado = filas.IdTipoEmpleado;
        objEMPLEADO.Nombre = filas.Nombre;
        objEMPLEADO.Celular = filas.Celular;
        objEMPLEADO.Correo = filas.Correo;
        objEMPLEADO.Direccion = filas.Direccion;
        objEMPLEADO.Sueldo = filas.Sueldo;

        return objEMPLEADO;
    }
    public static DTO_EMPLEADO MostrarTodosID(int cod1)
    {
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        EMPLEADODTS.EmpleadoDataTable tabla = adaptador.MostrarEmpleadosID(cod1);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }

    /*public static DTO_EMPLEADO login(string UsuarioEmp, string Contraseña)
    {
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador
            = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        EMPLEADODTS.EmpleadoDataTable tabla = adaptador.MostrarLoginEmp(UsuarioEmp, Contraseña);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }
    */
    public static void insertarEmpleado(string usuarioemp, string contrasena, int id_tipoempleado, string nombre, string celular, string correo, string direccion, decimal sueldo)
    {
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        adaptador.Insert(usuarioemp, contrasena, id_tipoempleado, nombre, celular, correo, direccion, sueldo);
    }
    public static void borrarEmpleado(int codEmpleado)
    {
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        adaptador.Delete(codEmpleado);
    }
    public static void actualizarEmpleado(string usuarioemp, string contrasena, int id_tipoempleado, string nombre, string celular, string correo, string direccion, decimal sueldo, int id)
    {
        EMPLEADODTSTableAdapters.EmpleadoTableAdapter adaptador = new EMPLEADODTSTableAdapters.EmpleadoTableAdapter();
        adaptador.Update(usuarioemp, contrasena, id_tipoempleado, nombre, celular, correo, direccion, sueldo, id);
    }
}