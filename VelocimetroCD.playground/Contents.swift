// Tarea #2 Velocímetro - Cristian Diaz

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena: String) {
        switch velocidad.rawValue {
        case 0 :    velocidad = .VelocidadBaja
                    return (0,"Apagado")
        case 20 :   velocidad = .VelocidadMedia
                    return (20,"Velocidad Baja")
        case 50 :   velocidad = .VelocidadAlta
                    return (50,"Velocidad Media")
        case 120:   velocidad = .VelocidadMedia
                    return (120,"Velocidad Alta")
        default:    return (0,"")
        }
    }
}

var auto = Auto()

for repeticion in 1...20 {
    let infoVelocidad = auto.cambioDeVelocidad()
    print("\(repeticion). \(infoVelocidad.actual), \(infoVelocidad.velocidadEnCadena)")
}