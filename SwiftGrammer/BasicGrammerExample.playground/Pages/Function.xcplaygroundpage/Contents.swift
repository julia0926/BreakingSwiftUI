import Swift

func greeting(friend: String, me: String = "julia") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "Tommy")
greeting(friend: "Amy", me: "jimin")

//중복 함수 정의
func greeting(to friend: String, from me: String){
    //함수 내부에서는 전달인자 사용시 매개변수 이름 사용
    print("Hi \(friend)! I'm \(me). It's my second Ex")
}
//함수 호출시(외부) 전달인자 레이블 사용
greeting(to: "buddy", from: "Jenny")

//가변 매개변수 (몇 개든지 매개변수 지정 가능)
func sayHelloToFriend(me: String, friends: String...) -> String{
    return "Hi \(friends)! I'm \(me)."
}
print(sayHelloToFriend(me: "jiin", friends: "one","two","three"))

//greeting 함수를 매개변수에 넣어서 사용가능
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("jiin", "jimin")

//가변 매개변수 타입이므로 타입이 달라 할당 X
//someFunction = sayHelloToFriend(me: String, friends: <#T##String…##String#>)

func runAnother(function: (String, String) -> Void) {
    function("Jenny","Mike")
}
runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)
