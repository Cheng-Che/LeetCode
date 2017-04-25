//
//  TwoSum.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/25.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count-1{
            var temp = target
            var ans:[Int] = []
            
            temp -= nums[i]
            ans.insert(i, at: 0)
            
            for j in i+1..<nums.count{
                if temp - nums[j] == 0{     //find two numbers
                    ans.insert(j, at: 1)
                    return ans
                }
            }
        }
        return []    //failed
    }
}
