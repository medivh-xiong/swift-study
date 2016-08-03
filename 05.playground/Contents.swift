//: Playground - noun: a place where people can play

import UIKit


// 1.使用数组定义一组数据
let array = ["why", 18 , 1.88]
array[0]
array[1]

// 2.使用字典定义一组数据
let dict = ["name" : "why", "age" : 18, "height" : 1.88]
dict["name"]
dict["age"]

// 3.使用元祖(一般用于作为方法的返回值)
let info = ("why", 18, 1.88)
info.0
info.1
info.2

// 3.1.可以给元祖取别名
let info1 = (name : "why", age : 18, height : 1.88)
info1.name
info1.0

// 3.2.元组中元素的别名，就是元祖的名称
let (name, age, height) = ("why", 18, 188)
name
age
height