import UIKit

//Dictionary
// <Key, Value> 쌍
var anyDictionary: Dictionary<String, Any> = [String: Any] ()
anyDictionary["이름"] = "사과"
anyDictionary["가격"] = 4000

print(anyDictionary)

//수정
anyDictionary["이름"] = "바나나"
//삭제
anyDictionary.removeValue(forKey: "가격") //key값을 통해 삭제1
anyDictionary["이름"] = nil //key값을 통해 삭제2

print(anyDictionary)

let emptyDictionary: [String: String] = [:] //빈 딕셔너리 생성
let initializedDictionary: [String: String] = ["name": "김지인", "gender": "여"]

//let val: String = initializedDictionary["name"] -> 불확실성 때메 오류 Optional에서 자세히
