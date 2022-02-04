//Defer statements are executed just before tranferring control to the outside

func f1(){

    defer{
        print("In First defer in f1")
    }

    print("In function f1")

    defer{
        print("In second defer in f1")
    }

    //Last defer statement is executed first
}

f1()
