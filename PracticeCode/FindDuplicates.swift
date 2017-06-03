//
//  FindDuplicates.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/3.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class FindDuplicates {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var sorted = nums.sorted()
        var ans:[Int] = []
        var i = 0
        while i+1 < nums.count{
            if sorted[i] == sorted[i+1]{
                ans.append(sorted[i])
                i+=2
            }else{
                i+=1
            }
        }
        return ans
    }
    
    
}
