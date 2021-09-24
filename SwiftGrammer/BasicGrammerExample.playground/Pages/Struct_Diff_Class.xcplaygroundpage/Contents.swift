//: [Previous](@previous)

import Swift

//구조체
struct SomeStruct {
    var someProperty: String = "Property"
}
var someStructInstace: SomeStruct = SomeStruct()

func someFunction(structInstace: SomeStruct){
    var localVal: SomeStruct = structInstace
    localVal.someProperty = "ABC"
}

someFunction(structInstace: someStructInstace)
print(someStructInstace.someProperty) //새로운 것이 복사가 되어서 들어감

//클래스
class someClass {
    var someProperty: String = "Property"
}
var someClassInstace: someClass = someClass()

func someFunction(classInstace: someClass){
    let localVal2: someClass = classInstace
    localVal2.someProperty = "ABC"
}
//같은 객체를 참조함
someFunction(classInstace: someClassInstace)
print(someClassInstace.someProperty) //ABC


var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
        return a + b
}

print(sum(1, 2))
