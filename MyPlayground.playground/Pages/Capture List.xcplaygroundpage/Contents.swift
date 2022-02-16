import Foundation

class Incrementer{
    var number = 0
    
    lazy var incrementNumber: (Int) -> () = { [weak self] value in
        guard let strongSelf = self else{
            print("Number has been de allocated")
            return
        }
        strongSelf.number += value
        print(strongSelf.number)
    }
    
    deinit{
        print("Deinit function")
    }
}

do{
    let incrementer = Incrementer()
    incrementer.incrementNumber(3)
}
