import Foundation

// Link to task
// https://leetcode.com/problems/two-sum/

//Test data
let input1 = [2,7,11,15]
let target1 = 9
let output1 = [0, 1]

let input2 = [3,2,4]
let target2 = 6
let output2 = [1,2]



// test function

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, n) in nums.enumerated() {
        if let val = dict[target - n] { return [val, i] }
        dict[n] = i
    }
    return []
}

// test function to debug
func asserted<T: Equatable>(result: T, output: T) {
    print("result: \(result), output: \(output)")
    assert(result == output, "result: \(result), output: \(output)")
}

asserted(result: twoSum(input1, target1), output: output1)
asserted(result: twoSum(input2, target2), output: output2)

