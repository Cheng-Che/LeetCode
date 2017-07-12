//
//  SingleNonDuplicate.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/12.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class SingleNonDuplicate {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var i = 0
        var j = nums.count-1
        if j == 0 { return nums[0] } // nums.count = 1
        while i<nums.count/2 && nums.count>1{
            if nums[i] != nums[i+1]{ return nums[i] }
            if nums[j] != nums[j-1]{ return nums[j] }
            i+=2
            j-=2
        }
        return nums.count == 0 ? 0 : nums[nums.count/2]
    }
}
