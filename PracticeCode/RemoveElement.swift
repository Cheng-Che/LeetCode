//
//  RemoveElement.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/25.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var j = 0
        for i in 0..<nums.count{
            if nums[i] != val{
                nums[j] = nums[i]
                j+=1
            }
        }
        return j
    }
}
