//
//  ThirdMaxNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/2.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class ThirdMaxnum {
    func thirdMax(_ nums: [Int]) -> Int {
        let sorted = nums.sorted(by: >)
        var count = 0
        var i = 0

        while i+1 < sorted.count{
            if sorted[i] != sorted[i+1]{
                count += 1
            }
            if count == 2{
                return sorted[i+1]
            }
            i += 1
        }
        return sorted[0]
    }
}
