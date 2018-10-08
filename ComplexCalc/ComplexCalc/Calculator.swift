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
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int,Int) -> Int) -> Int {
        var total = beg
        for i in 0...(args.count - 1) {
            total = op(total, args[i])
        }
        return total
    }
    
    func add (lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ nums : [Int]) -> Int {
        var ret = 0;
        for i in nums {
            ret = ret + i
        }
        return ret
    }
    
    var add = {(a1: Int, a2: Int) -> Int in
        return a1 + a2
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return ((lhs.0 + rhs.0), (lhs.1 + rhs.1))
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let x1 = lhs["x"]!
        let x2 = rhs["x"]!
        let y1 = lhs["y"]!
        let y2 = rhs["y"]!
        let dic = ["x": x1 + x2, "y": y1 + y2]
        return dic
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let x1 = lhs["x"]!
        let x2 = rhs["x"]!
        let y1 = lhs["y"]!
        let y2 = rhs["y"]!
        let dic = ["x": x1 - x2, "y": y1 - y2]
        return dic
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return ((lhs.0 - rhs.0), (lhs.1 - rhs.1))
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
