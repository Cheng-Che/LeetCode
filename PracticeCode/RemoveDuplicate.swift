//
//  RemoveDuplicate.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/28.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class RemoveDuplicate {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var j = 1
        for i in 0..<nums.count{
            if i>0 && nums[i] != nums[i-1]{
                nums[j] = nums[i]
                j+=1
            }
        }
        return j > nums.count ? nums.count : j
    }
}

/* Wrong answer :Memory Limit Exceeded
 
 while i < nums.count{
    while i+1 < nums.count && nums[i] == nums[i+1]{
        nums.remove(at: i+1)
    }
    i += 1
 }
 
 */
