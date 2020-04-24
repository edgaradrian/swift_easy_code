import UIKit

struct MyStack<Element>: Sequence {
    
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
    
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }//makeIterator
    
    mutating func pushAll<S: Sequence>(_ items: S) where S.Iterator.Element == Element {
        for item in items {
            self.push(item)
        }
    }
    
    //Bronze Challenge
    func filter(_ f: (Element) -> Bool) -> MyStack<Element> {
        var filterItems = [Element]()
        for item in items {
            if f(item) {
                filterItems.append(item)
            }
        }
        return MyStack<Element>(items: filterItems)
    }//filter
    //Bronze Challenge

    
}//MyStack

struct StackIterator<T>: IteratorProtocol {
    
    typealias Element = T
    
    var stack: MyStack<T>

    mutating func next() -> Element? {
        return stack.pop()
    }
    
}//StackIterator

var intStack = MyStack<Int>()
intStack.push(1)
intStack.push(2)
var doubleStack = intStack.map { $0 * 2 }

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

print(doubleStack.pop())
print(doubleStack.pop())

//String example
var stringStack = MyStack<String>()
stringStack.push("This is a String")
stringStack.push("another string")

print(stringStack.pop())

var newStack = MyStack<Int>()
newStack.push(10)
newStack.push(20)
newStack.push(30)

var myStackInteractor = StackIterator(stack: newStack)
while let value = myStackInteractor.next() {
    print("pop: \(value)")
}

for value in newStack {
    print("for-in loop: \(value)")
}

newStack.pushAll([1,2,3])
for value in newStack {
    print("after pushing: got \(value)")
}

var myOtherStack = MyStack<Int>()
myOtherStack.pushAll([4,5,6])
newStack.pushAll(myOtherStack)
for value in newStack {
    print("after pushing items onto stack, got \(value)")
}

//Bronze Challenge
var aNewStack = MyStack<Int>()
aNewStack.pushAll([1,1,1,2,3,4])
var filterANewStack = aNewStack.filter { $0 == 1 }
print(filterANewStack)

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

func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}//checkIfEqual

print(checkIfEqual(1, 1))
print(checkIfEqual("a string", "a string"))
print(checkIfEqual("a string", "a different string"))

func checkIfDescriptionMatch<T:CustomStringConvertible, U:CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}//checkIfDescriptionMatch

print(checkIfDescriptionMatch(Int(1), UInt(1)))
print(checkIfDescriptionMatch(1, 1.0))
print(checkIfDescriptionMatch(Float(1.0), Double(1.0)))

//Silver Challenge
func findAll<T: Equatable>(_ array:[T], _ element:T) -> [Int] {
    var positions = [Int]()
    var count = 0
    for item in array {
        if item == element {
            positions.append(count)
        }
        count += 1
    }
    return positions
}//findAll

let arrayInt = [1,1,1,3,4,11,1,3,4,11,9]
print(findAll(arrayInt, 1))

let arrayString = ["a","b","c","d","c","b","a"]
print(findAll(arrayString, "a"))

//Silver Challenge





