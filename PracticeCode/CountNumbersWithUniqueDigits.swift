//
//  CountNumbersWithUniqueDigits.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/6.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class CountNumbersWithUniqueDigits {
    func countNumbersWithUniqueDigits(_ n: Int) -> Int {
        let base = 10
        let k = 9*9
        var total = n==1 ? base : base+k
        var i = 1
        while i<=n-2 && n>2{
            var temp = k
            for j in 1...i{
                temp*=(9-j)
            }
            total+=temp
            i+=1
        }
        return n<1 ? 1: total
    }
}
