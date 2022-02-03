struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point = Point(x: 0,y: 0) {
        /*get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }*/
        willSet{
            print("About to change the center")
        }
        didSet{
            print("Center changed")
        }
    }
}

var rect = Rect(origin: Point(x: 0,y: 0), size: Size(width: 10,height: 5))
print(rect.center.x, rect.center.y)
rect.center = Point(x: 0,y: 0)
print(rect.origin.x, rect.origin.y)
