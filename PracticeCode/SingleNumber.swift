//
//  SingleNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/10.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        if nums.count == 1 { return nums[0] }
        if nums[0] != nums[1] { return nums[0] }
        if nums[nums.count-2] != nums.last! { return nums.last! }
        for i in 1..<nums.count - 1{
            if nums.sorted()[i-1] != nums.sorted()[i] && nums.sorted()[i] != nums.sorted()[i+1]{
                return nums.sorted()[i]
            }
        }
        return 0
    }
}
