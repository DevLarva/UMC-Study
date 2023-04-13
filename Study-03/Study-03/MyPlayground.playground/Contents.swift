import UIKit



var email: String?
print(email) // nil

email = "bdh3620@gmail.com"
print(email) // Optional("bdh3620@gmail.com")
func test() {
    let condition1: Bool = true
    let condition2: Bool = true
    guard condition1, condition2 else {
        return print("bye")
    }
    print("come in")
}
test()

//MARK: - if let 사용
let optionalInt1: Int? = 44

if let unwrappedInt = optionalInt1 {
    print("The value of optionalInt is \(unwrappedInt)")
} else {
    print("optionalInt is nil")
}


//MARK: - guard 사용
func printOptionalInt(_ optionalInt: Int?) {
    guard let unwrappedInt = optionalInt else {
        print("optionalInt is nil")
        return
    }
    print("The value of optionalInt is \(unwrappedInt)")
}

printOptionalInt(nil)
printOptionalInt(42)

//MARK: - optional chaining 사용
struct Person {
    var name: String
    var age: Int?
}

let person1 = Person(name: "John", age: 30)
let person2 = Person(name: "Jane", age: nil)

print(person1.age ?? "Unknown")
print(person2.age ?? "Unknown")

//MARK: - optional chaining + guard 사용
let optionalString: String? = "Hello"
let optionalInt: Int? = 42

guard let unwrappedString = optionalString, let unwrappedInt = optionalInt else {
    print("Either optionalString or optionalInt is nil")
    fatalError()
}

print("The value of optionalString is \(unwrappedString) and the value of optionalInt is \(unwrappedInt)")
