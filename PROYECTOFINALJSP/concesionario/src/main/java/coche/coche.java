package coche;

public class coche {

        long id;
        String marca;
        String modelo;
        String color;
        String matricula;
    
        public coche(){
            this(0,"","","","");
        }
    
    
        public coche(int id, String marca, String modelo, String color,String matricula){
            this.id = id;
            this.marca = marca;
            this.modelo = modelo;
            this.color= color;
            this.matricula = matricula;
            
        }
    
        public long getId() {
            return id;
        }
    
        public void setId(long id) {
            this.id = id;
        }
    
        public String getMarca() {
            return marca;
        }
    
        public void setMarca(String marca) {
            this.marca = marca;
        }
    
        public String getModelo() {
            return modelo;
        }
    
        public void setModelo(String modelo) {
            this.modelo = modelo;
        }
    
        public String getColor() {
            return color;
        }
    
        public void setColor(String color) {
            this.color = color;
        }

        public String getMatricula() {
            return color;
        }
    
        public void setMatricula(String matricula) {
            this.matricula = matricula;
        }
    
        @Override
        public String toString() {
            return String.format("<td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>", this.id, this.marca, this.modelo, this.color, this.matricula);
        }
    }

