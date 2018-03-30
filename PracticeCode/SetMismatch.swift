//
//  SetMismatch.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/30.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class SetMismatch {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var res:[Int] = [0]
        var numSort = nums.sorted()
        for i in 0..<nums.count{
            if numSort[i] != i+1 {
                if (i+1 < nums.count && numSort[i] == numSort[i+1]) || ( i>0 && numSort[i] == numSort[i-1]){
                    res[0] = numSort[i]
                }
                if  res.count < 2 && i+1 < nums.count && numSort[i+1] != i+1{
                    res.append(i+1)
                }
            }
        }
        if res.count == 1{
            res.append(nums.count)
        }
        return res.first! == 0 ? [] : res
    }
}
