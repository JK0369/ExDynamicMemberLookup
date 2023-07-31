import UIKit

// ex1
@dynamicMemberLookup
struct Person {
    var name: String

    subscript(dynamicMember key: String) -> String {
        switch key {
        case "yourName":
            return name
        default:
            return "none"
        }
    }
}

var p = Person(name: "jake")
p.yourName
