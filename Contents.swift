//: Playground - noun: zeydi lópez

import UIKit

enum Velocidades : Int {

    case Apagado = 0 , VelocidadBaja = 20 , VelocidadMedia = 50 , VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
    
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    var vel : Int = 0
    var msj : String = ""
    
    init(velocidad : Velocidades ){
    
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual : Int , velocidadEnCadena : String){
        
    
        switch velocidad {
            
        case .Apagado:
            
            velocidad = Velocidades.VelocidadBaja
            vel = velocidad.rawValue
            msj = String(Velocidades.VelocidadBaja)
        
        case .VelocidadBaja:
            
            velocidad = Velocidades.VelocidadMedia
            vel = velocidad.rawValue
            msj = String(Velocidades.VelocidadMedia)
            
        case .VelocidadMedia:
            
            velocidad = Velocidades.VelocidadAlta
            vel = velocidad.rawValue
            msj = String(Velocidades.VelocidadAlta)
            
        case .VelocidadAlta:
            
            velocidad = Velocidades.VelocidadMedia
            vel = velocidad.rawValue
            msj = String(Velocidades.VelocidadMedia)
            
        }
        let resp = (vel , msj)
        return resp
    }
}

var auto = Auto(velocidad: Velocidades.Apagado)

for var x = 1; x <= 5 ; x++ {
   var vel = auto.cambioDeVelocidad()
    print(vel)
    
}








