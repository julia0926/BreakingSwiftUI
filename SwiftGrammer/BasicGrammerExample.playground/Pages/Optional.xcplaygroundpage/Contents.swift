import Swift

//if-let 이용하여 nil 값 추출
var name1: String? = "Julia"
var name2: String? = nil

//friend가 nil 값이라 추출 안됨
if let name = name1, let friend = name2 {
    print("\(name) and \(friend)")
}
//name2 값 지정
name2 = "Keity"
if let name = name1, let friend = name2 {
    print("\(name) and \(friend)")
}
