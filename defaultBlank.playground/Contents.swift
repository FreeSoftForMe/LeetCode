import Foundation

// Link to task
// 

//Test data
let input1 =
let output1 =

let input2 =
let output2 =



// test function


// test function to debug
func asserted<T: Equatable>(result: T, output: T) {
    print("result: \(result), output: \(output)")
    assert(result == output, "result: \(result), output: \(output)")
}

func assertedWithTime<T: Equatable>(output: T, _ block: @autoclosure () -> T) {
    let result = startWithTime(block: block())
    asserted(result: result, output: output)
}

private func startWithTime<T>(block: @autoclosure () -> T) -> T {
    let start = Date()
    defer {
        let timeInterval = Date().timeIntervalSince(start)
        guard timeInterval < 1 else { fatalError("time out") }
        print("Time to evaluate \(timeInterval) seconds")
    }
    return block()
}

// test function
assertedWithTime()



