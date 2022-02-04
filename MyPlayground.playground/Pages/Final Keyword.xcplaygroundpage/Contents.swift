class A{
    final func SomeMethod(){
        print("Some Method in Class A")
    }
    
    func OtherMethod(){
        print("Other Method in Class A")
    }
}

class B: A{
    
    //This method gives an error
    /*override func SomeMethod(){
        print("Some Method in Class B")
    }*/
    
    override func OtherMethod(){
        print("Other Method in Class B")
    }
}

var b = B()

b.SomeMethod()
b.OtherMethod()
