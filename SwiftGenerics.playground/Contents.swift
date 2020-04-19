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
