//: Playground - noun: a place where people can play

import UIKit

/*
 1.类的定义
 2.创建类对应的对象
 3.给类的属性赋值
    1> 直接赋值
    2> 通过KVC赋值
 4.可以重写setValue(value: AnyObject?, forUndefinedKey key: String，那么字典中没有的字段可以在类中没有对应的属性
 5.override：重写，如果写的某一个方法是对父类的方法的重写，则必须要在该方法前加上override
 
 
 */


class Person : NSObject {
    var age = 0
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        print("key:\(key) not defined")
    }
    
}

let p = Person()

p.setValuesForKeysWithDictionary(["age" : 19, "name" : "why"])
print(p.age)


class Student: NSObject {
    var age  = 0
    var name : String?
    
    var mathScore  = 0.0
    var chinese    = 0.0
    
    // 定义计算属性：通过别的方式计算到结果的属性，称之为计算属性
    var avageScore : Double {
        return (mathScore + chinese) * 0.5
    }
    
    // 定义类属性：类属性是和整个类相关的属性，而且是通过类别来访问，一般用于单例
    static var courseCOunt = 0
}

// 给类属性进行赋值
Student.courseCOunt = 2

let stu = Student()

// 给实例对象属性赋值
stu.age = 17
stu.name = "张三"
stu.mathScore = 78
stu.chinese   = 59.0

print(stu.age)
if let name = stu.name {
    print(name)
}

print(stu.avageScore)
