//
//  MaxConsecutiveOnes.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/3.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var res = 0
        for num in nums{
            if num == 1{
                count += 1
            }else{
                res = max(res, count)
                count = 0
            }
        }
        return max(res, count)
    }
}
