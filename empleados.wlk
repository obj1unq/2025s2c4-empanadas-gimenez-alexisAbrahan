//Escribir aqui los objetos
object gimenez{

//Dinero que tiene gimenez a su disposicion
 var fondo = 300000

 method fondo() {
   return fondo
 }
 method pagarSueldo(empleado) {
    empleado.cobrarSueldo()
   fondo = fondo - empleado.sueldo()
   
 }

}

object baigorria {
  var empanadasVendidas = 0
  const valorDeEmpanadas = 15
  var sueldo = empanadasVendidas * valorDeEmpanadas
  var dinero = 0
  var dineroCobradoTotal = 0
 
  // setter
  method vender(cantEmpanadasVendidas) {
    empanadasVendidas = empanadasVendidas + cantEmpanadasVendidas    
  }
 // Getter
    method sueldo() {
    return sueldo
  }
  // Setter
  method cobrarSueldo() {
    dinero = dinero + sueldo
    dineroCobradoTotal = dineroCobradoTotal + sueldo

  }
  // Getter
  method totalCobrado() {
    return dineroCobradoTotal
  }
}

object galvan {
  var sueldo = 150000
  var dinero = 0
  var dineroCobradoTotal = 0
  // Setter
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }

   // Getter
    method sueldo() {
    return sueldo
  }
  // Setter
  method cobrarSueldo() {
    dinero = dinero + sueldo
    dineroCobradoTotal = dineroCobradoTotal + sueldo

  }
  // Getter
  method totalCobrado() {
    return dineroCobradoTotal
  }

}