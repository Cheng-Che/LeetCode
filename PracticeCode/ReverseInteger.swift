//
//  ReverseInteger.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/3.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class ReverseInt {
    func reverse(_ x: Int) -> Int {
        let input = abs(x)
        if Int(String(String(input).characters.reversed()))! > 2147483649 { return 0 }
        return x >= 0 ? Int(String(String(input).characters.reversed()))! : Int(String(String(input).characters.reversed()))! * (-1)
        // Int(Int32.max) will not be the same as the Expected answer
    }
}
