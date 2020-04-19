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





