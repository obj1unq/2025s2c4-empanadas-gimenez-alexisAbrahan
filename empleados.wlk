import wollok.vm.*
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
  var dineroCobradoTotal = 0
 
  // setter
  method vender(cantEmpanadasVendidas) {
    empanadasVendidas = empanadasVendidas + cantEmpanadasVendidas    
  }
 // Getter
    method sueldo() {
    return empanadasVendidas * valorDeEmpanadas
  }
  // Setter
  method cobrarSueldo() {
    //dinero = dinero + self.sueldo()
    dineroCobradoTotal = dineroCobradoTotal + self.sueldo()

  }
  // Getter
  method totalCobrado() {
    return dineroCobradoTotal
  }
}

object galvan {
  var sueldo = 15000
  var dinero = 0
  var deuda = 0


  method gastar(gasto){
    if (gasto >= dinero){
      deuda = deuda + (gasto-dinero)
      dinero = 0 
    }

    else {dinero = dinero - gasto}
    

  }

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

    if (deuda>0 and sueldo>deuda){
      dinero = dinero - deuda + sueldo
      deuda = 0
    }
    else if (deuda>0 and dinero<deuda){
      deuda = deuda - sueldo
    }

    else {dinero = dinero + sueldo}
    

  }
  // Getter
  method totalCobrado() {
    return dinero
  }
    // Getter
  method deuda() {
    return deuda
  }
      // Getter
  method dinero() {
    return dinero
  }

}