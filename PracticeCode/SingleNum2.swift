//
//  SingleNum2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class SingleNumber2 {
    func singleNumber(_ nums: [Int]) -> Int {
        let temp = nums.sorted()
        for i in 0..<nums.count-1{
            if i == 0 && temp[i] != temp[i+1]{
                return temp[i]
            }
            if i+2 < nums.count && temp[i] != temp[i+1] && temp[i+1] != temp[i+2]{
                return temp[i+1]
            }
            if i+2 == nums.count{
                return temp[i+1]
            }
        }
        return nums[0]
    }
}


        
