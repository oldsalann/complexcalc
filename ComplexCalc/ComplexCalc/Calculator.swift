//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    var left : Int
    var right: Int
    
    init() {
        self.left = 0
        self.right = 0
    }
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ nums : [Int]) -> Int {
        var ret = 0;
        for i in nums {
            ret = ret + i
        }
        return ret
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ nums : [Int]) -> Int {
        var ret = 1;
        for i in nums {
            ret = ret * i
        }
        return ret
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ nums : [Int]) -> Int {
        return nums.count
    }
    
    func avg(_ nums: [Int]) -> Int {
        let total = self.add(nums)
        return total / nums.count
    }
}
