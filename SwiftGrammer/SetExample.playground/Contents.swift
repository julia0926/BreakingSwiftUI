import UIKit

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(2)
integerSet.insert(10)
integerSet.insert(10)
integerSet.insert(100)

integerSet
//set은 중복된 값이 없기 때문에 같은 값 넣어도 1,2,10,100만 들어있음
integerSet.contains(2)
integerSet.remove(100)
integerSet.removeFirst()
integerSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) //합집합
let sortedUnion: [Int] = union.sorted() //정렬된 합집합을 배열에 넣음

let intersection: Set<Int> = setA.intersection(setB)//교집합
let subtracting: Set<Int> = setA.subtracting(setB) //차집합


