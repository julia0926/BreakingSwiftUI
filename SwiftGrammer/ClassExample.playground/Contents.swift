import UIKit

/*
 class 이름 {
    <- 구현부 ->
 }
 */

class Test {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메소드
    func instaceMethod() {
        print("instace method")
    }
    
    //타입 메서드
    //static - 재정의 할 수 없음
    static func typeMethod() {
        print("type method - static")
    }
    //class - 재정의 가능
    class func classMethod(){
        print("type method - class")
    }
}

//클래스 사용
var mutableReference: Test = Test()

mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference : Test = Test()
immutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

Test.typeProperty = 300
Test.typeMethod() // "type method - static"이 출력됨

//Example 1
class Student{
    var name: String = "김지인"
    var age: Int = 24
    var `class`: String = "햇빛반" // class 라는 이름을 swift에서 사용하므로
    
    class func selfIntroduce(){
        print ("학생 타입 입니다.")
    }
    func selfIntroduce() {
        print("저는 \(self.class)반 \(self.age)살 \(self.name)입니다.")
    }
}

Student.selfIntroduce()

var Tom: Student = Student()
Tom.age = 19
Tom.name = "Tom"
Tom.class = "Happy"
//Tom.school = "Sunny Elementry School"
Tom.selfIntroduce()

let Jenny: Student = Student()
Jenny.age = 17
Jenny.name = "Jenny"
Jenny.class = "Joy"
Jenny.selfIntroduce()


// Example 2
class Planet{
    var name: String
    var description: String
    
    init(name: String, description: String){
        self.name = name
        self.description = description
    }
}

let mercury = Planet(name: "Mercury", description: "hot planet")
print("행성의 이름은 \(mercury.name)이고, \(mercury.description)한 행성이야")


