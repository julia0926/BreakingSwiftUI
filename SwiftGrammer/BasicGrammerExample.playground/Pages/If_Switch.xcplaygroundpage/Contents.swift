import UIKit

/*
    if-else 구문
    if 뒤에 소괄호 생략가능, 중괄호는 생략 X (한줄이라도)
 */
var someInteger = 100

if someInteger < 100{
    print("100미만")
}else if someInteger > 100{
    print("100초과")
}else{
    print("100임")
}

/*
    Switch문
    - .. : 미만
    - ... : 이하
    - defalut문 필수.
    - break 명시적으로 하지 않아도 포함됨.
 */
someInteger = 19122

switch someInteger {
case 1..<100: //1이상 100미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch "Julia" {
case "Hi", "Hello": //콤마로 두개 붙여서 사용 가능
    print("Hi")
case "Julia":
    print("Julia!!!")
default:
    print("unknown")
}
