//: Playground - noun: a place where people can play

import UIKit

func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

sum(10, num2: 30)

// 注意一:内部参数和外部参数
//内部参数：在函数内部能看到的参数就是内部参数，默认情况下所有的参数都是内部参数
// 外部参数：在函数外部可以看到参数名称就是外部参数，默认情况下第二个参数开始即是内部参数也是外部参数
// 如果希望第一个参数也是外部参数，可以在标识符前给该参数添加一个别名

func sum1(num1 num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

sum1(num1: 10, num2: 30)

// 注意二:swift中的默认参数
func getCoffee(coffeeName : String = "蓝山咖啡") -> String {
    return "制作了一杯\(coffeeName)"
}

getCoffee("拿铁")
getCoffee("卡布奇诺")
getCoffee("雀巢")
getCoffee()


// 注意三:可变参数
func sum3(num : Int...) -> Int {
    var result = 0
    for n in num {
        result += n
    }
    return result
}

sum3(10, 20, 30)

//注意四：指针类型
var m = 33
var n = 13

//func swapNum(var m : Int, var n : Int) {
//    let temp = m
//    m = n
//    n = temphttp://js.iwififree.com/wifiPortal/images/js/new/pc/aWiFiLogo.jpg
//}
func swapNum(inout m : Int, inout n : Int) {
    let temp = m
    m = n
    n = temp
}

swapNum(&m, n: &n)

print("m:\(m), n:\(n)")

swap(&m, &n)

print("m:\(m), n:\(n)")

// 注意五：函数的嵌套使用(不推荐)
func test0() {
    
    func demo() {
        print("demo")
    }
    
    print("test")
    
    demo()
}

test0()
