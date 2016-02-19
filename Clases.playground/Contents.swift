//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial:Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad: Velocidades;
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado );
    }
    
    func cambioDeVelocidad() -> ( actual:Int, velocidadEnCadena: String ) {
        
        let velocidadActual = velocidad.rawValue;
        var cadena: String;
        
        switch velocidad {
        case .Apagado:
            cadena = "Apagado";
            velocidad = .VelocidadBaja;
        case .VelocidadBaja:
            cadena = "Velocidad baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            cadena = "Velocidad media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            cadena = "Velocidad alta"
            velocidad = .VelocidadMedia
        }
        
        return ( velocidadActual, cadena );
    }
}

var auto = Auto();
for  i in 1...20  {
    let ( actual, enCadena ) = auto.cambioDeVelocidad()
    print("\(i). \(actual), \(enCadena)" )
}

