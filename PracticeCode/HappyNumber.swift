//
//  HappyNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class HappyNumbr {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var next = 0
        while num>=1{
            next += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        if next == 1 { return true }
        return next == 4 ? false : isHappy(next)
    }
}
