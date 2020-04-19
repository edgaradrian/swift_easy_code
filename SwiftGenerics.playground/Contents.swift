import UIKit

struct MyStack<Element> {
    
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }//push
    
    mutating func pop() -> Element? {
        
        guard !items.isEmpty else {
            return nil
        }

        return items.removeLast()
        
    }//pop
    
    func map<U>(_ f: (Element) -> U) -> MyStack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return MyStack<U>(items: mappedItems)
    }//map

    
}//MyStack

var intStack = MyStack<Int>()
intStack.push(1)
intStack.push(2)

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

//String example
var stringStack = MyStack<String>()
stringStack.push("This is a String")
stringStack.push("another string")

print(stringStack.pop())

func myMap<T,U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }//for item
    return result
}//myMap

let strings = ["I","II","III"]
let stringLengths = myMap(strings) { $0.count }
print(stringLengths)





