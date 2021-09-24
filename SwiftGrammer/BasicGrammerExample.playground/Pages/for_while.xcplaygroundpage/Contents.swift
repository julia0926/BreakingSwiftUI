import Swift

var integers = [1,2,3]
let people = ["jiin": 24, "jimin": 20, "Mom": 51]

for i in integers{
    print(i)
}
for (name, age) in people { //소괄호 생략할 수 없음
    print("\(name) : \(age)")
}

while integers.count > 2 {
    integers.removeLast()
}
for i in integers{
    print(i)
}

repeat {
    integers.removeLast()
} while integers.count > 0 //do-while과 같음
