import UIKit

struct MyStack {
    
    var items = [Int]()
    
    mutating func push(_ item: Int) {
        items.append(item)
    }//push
    
    mutating func pop() -> Int? {
        
        guard !items.isEmpty else {
            return nil
        }

        return items.removeLast()
        
    }//pop
    
}//MyStack

var intStack = MyStack()
intStack.push(1)
intStack.push(2)

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())
