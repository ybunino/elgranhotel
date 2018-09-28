
package Datos;

/* Habitación */
public class Habitacion {
    private int id = -1;
    private Tipo tipoDeHabitacion;
    private int numero;
    private int piso;
    private boolean disponible;

    public Habitacion(int id, Tipo tipoDeHabitacion, int numero, int piso, boolean disponible) {
        this.id = id;
        this.tipoDeHabitacion = tipoDeHabitacion;
        this.numero = numero;
        this.piso = piso;
        this.disponible = disponible;
    }
    
      public Habitacion(Tipo tipoDeHabitacion, int numero, int piso, boolean disponible) {
        this.id= -1;
        this.tipoDeHabitacion = tipoDeHabitacion;
        this.numero = numero;
        this.piso = piso;
        this.disponible = disponible;
    }

    public Habitacion() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Tipo getTipoDeHabitacion() {
        return tipoDeHabitacion;
    }

    public void setTipoDeHabitacion(Tipo tipoDeHabitacion) {
        this.tipoDeHabitacion = tipoDeHabitacion;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    
    
}