//: Playground - noun: a place where people can play

import UIKit



// 1.没有参数没有返回值的函数
func test() -> Void {
    print("aaa")
}
test()

func test1() {
    print("bbb")
}
test1()

// 2.没有参数有返回值的函数
func readMessage() -> String {
    return "你好"
}
print(readMessage())

// 3.有参数，没有返回值的函数
func callPhone(phoneNum : String) -> Void {
//    print("打电话给" + phoneNum)
    print("打电话给\(phoneNum)")
}

callPhone("110")

// 4.有参数有返回值的函数
func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

sum(20, num2: 30)
