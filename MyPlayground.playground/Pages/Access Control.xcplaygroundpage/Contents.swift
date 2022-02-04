class Example{
    
    private func PrivateMethod(){
        print("In private method")
    }
    
    func AccessPrivateMethod(){
        PrivateMethod()
    }
    
    fileprivate func FilePrivateMethod(){
        print("In file private method")
    }
    
    internal func InternalMethod(){
        print("In file private method")
    }
    
    public func PublicMethod(){
        print("In public method")
    }
}

var example: Example = Example()

//Can't access private method
//example.PrivateMethod()

//To access private method
example.AccessPrivateMethod()

example.FilePrivateMethod()

example.InternalMethod()

example.PublicMethod()
