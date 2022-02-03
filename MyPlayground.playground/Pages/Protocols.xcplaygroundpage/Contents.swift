protocol Calculatable{
    func Calculate() -> Double
}

class Rect: Calculatable{
    var height: Double
    var width: Double
    
    init(height: Double, width: Double)
    {
        self.height = height
        self.width = width
    }
    
    func Calculate() -> Double
    {
        return height * width
    }
}

class Circle: Calculatable{
    var radius: Double
    
    init(radius: Double){
        self.radius = radius
    }
    
    func Calculate() -> Double {
        return 3.14 * radius * radius
    }
}

var rect = Rect(height: 10, width: 5)
rect.Calculate()

var circle = Circle(radius: 10)
circle.Calculate()
