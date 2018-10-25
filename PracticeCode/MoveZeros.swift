//
//  MoveZeros.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/5/2.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class MoveZeros {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count{
            if nums[i] != 0{
                nums[j] = nums[i]
                j += 1
            }
        }
        while j < nums.count {
            nums[j] = 0
            j += 1
        }
    }
}
