//
//  NextGreater2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class NextGreater2 {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var ans:[Int] = []
        var i = 0
        while i < nums.count{
            var j = (i+1 == nums.count) ? 0 : i+1
            while j != i{
                if nums[j] > nums[i]{
                    ans.append(nums[j])
                    break
                }
                j = (j == nums.count-1) ? 0 : j+1
                
            }
            if j == i { ans.append(-1) }
            i += 1
        }
        return ans
    }
}
