
import Foundation

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon //Weekend 타입
day = .fri
print(day)

switch day {
case .mon, .tue, .wed, .thu:
    print("평일")
case .fri:
    print("불금!")
case .sat, .sun:
    print("주말!!!")
}

enum Fruit: Int {
    case apple = 0
    case grape
    case peach
}
print("Fruit == \(Fruit.peach.rawValue)")
//rawValue는 Int형 원시값을 갖고있음

//let apple: Fruit = Fruit(rawValue: 0) //일반타입은 rawValue 꺼낼 수 없음
let apple: Fruit? = Fruit(rawValue: 0) //Optional로 감싸서 추출


enum Family: String {
    case mom = "엄마"
    case dad = "아빠"
    case sister = "언니"
    case brother
    //enum에 메소드도 선언 가능
    func printMessage() {
        switch self {
        case .mom, .dad:
            print("엄빠")
        case .sister, .brother:
            print("자식")
        }
    }
}
print(Family.mom.rawValue)
print(Family.brother.rawValue) //String은 rowValue를 알 수 없으므로 케이스 이름 그대로 가져옴
Family.dad.printMessage()
