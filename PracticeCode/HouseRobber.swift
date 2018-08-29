//
//  HouseRobber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class HouseRobber {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 3{
            return nums.count == 0 ? 0 : nums.max()!
        }
        var res:[Int] = [nums[0], max(nums[0], nums[1])]
        
        for i in 2..<nums.count{
            res.append(max(nums[i] + res[i-2], res[i-1]))
        }
        
        return res.last!
    }
    
}
