//: Playground - noun: a place where people can play

import UIKit

// 1.定义数组
// 1.1 定义不可变数组：使用let修饰标识符
let array = ["why", "as", "fj"]


// 1.2 定义可变数组  数组是泛型结合，必须要告诉里面什么类型
//var arrayM = Array<String>()
var arrayM = [String]()


// 2.对可变数组的基本操作
// 2.1 添加元素
arrayM.append("fjfj")
arrayM.append("222")
arrayM.append("3333")

// 2.2删除元素
arrayM.removeAtIndex(0)
arrayM

// 2.3修改元素
arrayM[0] = "aaaa"
arrayM

// 2.4取出某个一个元素
arrayM[1]

// 3.数组的遍历
// 3.1 根据下标值
for i in 0..<array.count {
    print(array[i])
}

// 3.2.直接遍历数组中的元素
for string in array {
    print(string)
}

// 3.3.遍历数组中的前两个元素
for string in array[0..<2] {
    print(string)
}

// 4.数组的合并
//for name in array {
//    arrayM.append(name)
//}
let resultArray = array + arrayM

//注意相同类型数组才可以进行合并，不同类型的不能相加合并
