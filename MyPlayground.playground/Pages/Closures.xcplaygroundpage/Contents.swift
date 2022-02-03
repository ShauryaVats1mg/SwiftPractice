let digitMap = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let nums = [9,4,2001,35,58]

let strings = nums.map { (num) -> String in
    var number = num
    var ans = ""
    repeat{
        ans = digitMap[number % 10]! + " " + ans
        number /= 10
    }while number > 0
    ans.removeLast()
    return ans
}

print(strings)
