struct Point{
    var x: Double
    var y: Double
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    
    mutating func shiftBy(x deltaX: Double, y deltaY: Double)
    {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
    
    func show()
    {
        print("x = \(x), y = \(y)")
    }
}

var point = Point(x: 4, y: 5)
point.show()
point.shiftBy(x: 2, y: 3)
point.show()
