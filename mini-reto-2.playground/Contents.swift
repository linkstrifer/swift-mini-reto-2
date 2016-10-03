//: Mini-reto-2

enum velocidades : Int {
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init ( velocidadInicial : velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : velocidades
    
    init () {
        self.velocidad = velocidades( velocidadInicial : velocidades.apagado )
        
        print( self.velocidad.rawValue, self.velocidad )
    }
    
    func cambioDeVelocidad () -> ( actual : Int, velocidadEnCadena : String ) {
        switch self.velocidad.rawValue {
        case 0:
            self.velocidad = velocidades.velocidadBaja
        case 20:
            self.velocidad = velocidades.velocidadMedia
        case 50:
            self.velocidad = velocidades.velocidadAlta
        case 120:
            self.velocidad = velocidades.velocidadMedia
        default:
            print("velocidad desconocida")
        }
        
        let velocidadEnCadena = String( velocidad )
        
        return ( velocidad.rawValue, velocidadEnCadena )
    }
}

var auto = Auto()

let range = 0...20

for count in range {
    let ( actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print( actual, velocidadEnCadena )
}