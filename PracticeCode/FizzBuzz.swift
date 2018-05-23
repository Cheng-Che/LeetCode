//
//  FizzBuzz.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/23.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FizzBuzz {
    func fizzBuzz(_ n: Int) -> [String] {
        var res:[String] = []
        for i in 1...n{
            res.append(i % 3 == 0 && i % 5 == 0 ? "FizzBuzz" : i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : "\(i)")
        }
        return res
    }
}
