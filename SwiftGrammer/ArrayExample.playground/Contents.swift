import UIKit

//Array
var integers: Array<Int> = Array<Int>() //Int 타입의 Array 배열
var integers2: Array<Int> = [Int]()
var integers3: [Int] = []

integers.append(1)
integers.append(100)
//integers.append("Hi") -> String타입이므로 오류

print(integers)

//포함여부
integers.contains(100) //true
integers.contains(2) //false


integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count //총 갯수

//let 이용하면 불변 Array
let immuteArray = [1,2,3]
//immuteArray.append(2)





