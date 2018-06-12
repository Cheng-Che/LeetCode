//
//  ContainsDuplicate2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/11.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ContainsDuplicate2 {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict:[Int:Int] = [:]
        for i in 0..<nums.count{
            if dict[nums[i]] == nil{
                dict[nums[i]] = i
            }else{
                if i - dict[nums[i]]! <= k{
                    return true
                }else{
                    dict[nums[i]] = i
                }
            }
        }

        return false
    }
}

/*
 var tempNums = nums
 var i = 0
 while tempNums.count > 0{
 tempNums.removeFirst()
 if tempNums.contains(nums[i]) && tempNums.index(of: nums[i])! - i + (i+1) <= k{
 return true
 }
 i+=1
 }
 return false
 */
