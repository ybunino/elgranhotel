package Datos;


public class Tipo {
    private int id = -1;
    private String tipo;
    private int capacidad;
    private int camas;
    private String tipo_cama;
    private double precio;

    public Tipo(int id, String tipo, int capacidad, int camas, String tipo_cama, double precio) {
        this.id = id;
        this.tipo = tipo;
        this.capacidad = capacidad;
        this.camas = camas;
        this.tipo_cama = tipo_cama;
        this.precio = precio;
    }
    
     public Tipo(String tipo, int capacidad, int camas, String tipo_cama, double precio) {
        this.id = -1;
        this.tipo = tipo;
        this.capacidad = capacidad;
        this.camas = camas;
        this.tipo_cama = tipo_cama;
        this.precio = precio;
}

    public Tipo() {
    }

     
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getCamas() {
        return camas;
    }

    public void setCamas(int camas) {
        this.camas = camas;
    }

    public String getTipo_cama() {
        return tipo_cama;
    }

    public void setTipo_cama(String tipo_cama) {
        this.tipo_cama = tipo_cama;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
     
     
     
}
