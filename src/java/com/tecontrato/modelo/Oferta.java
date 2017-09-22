
package com.tecontrato.modelo;

/**
 * Nombre de la clase: Oferta
 * Versión: 1.0
 * Fecha: 21/09/2017
 * CopyRight: Programmer Group Services S.A de C.V
 * @author Alexis, Kevin, Luis, María José, Geofredo
 */
public class Oferta {
    
private int idOferta;
private Area area;
private Cargo cargo;
private NivelExperiencia nivelDepartamento;
private TipoContratacion tipoContratacion;
private Departamento departamento;
private Empresa empresa;
private String nombre;
private int vacantes;
private String descripcion;
private int edadMin;
private int edadMax;


    public Oferta() {
    }

    public Oferta(int idOferta, Area area, Cargo cargo, NivelExperiencia nivelDepartamento, TipoContratacion tipoContratacion, Departamento departamento, Empresa empresa, String nombre, int vacantes, String descripcion, int edadMin, int edadMax) {
        this.idOferta = idOferta;
        this.area = area;
        this.cargo = cargo;
        this.nivelDepartamento = nivelDepartamento;
        this.tipoContratacion = tipoContratacion;
        this.departamento = departamento;
        this.empresa = empresa;
        this.nombre = nombre;
        this.vacantes = vacantes;
        this.descripcion = descripcion;
        this.edadMin = edadMin;
        this.edadMax = edadMax;
    }

    public int getIdOferta() {
        return idOferta;
    }

    public void setIdOferta(int idOferta) {
        this.idOferta = idOferta;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public NivelExperiencia getNivelDepartamento() {
        return nivelDepartamento;
    }

    public void setNivelDepartamento(NivelExperiencia nivelDepartamento) {
        this.nivelDepartamento = nivelDepartamento;
    }

    public TipoContratacion getTipoContratacion() {
        return tipoContratacion;
    }

    public void setTipoContratacion(TipoContratacion tipoContratacion) {
        this.tipoContratacion = tipoContratacion;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getVacantes() {
        return vacantes;
    }

    public void setVacantes(int vacantes) {
        this.vacantes = vacantes;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getEdadMin() {
        return edadMin;
    }

    public void setEdadMin(int edadMin) {
        this.edadMin = edadMin;
    }

    public int getEdadMax() {
        return edadMax;
    }

    public void setEdadMax(int edadMax) {
        this.edadMax = edadMax;
    }


    
    
}
