//
//  FirstMissingPositive.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/20.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let array = nums.filter({$0 > 0}).sorted()
        if array.count == 0 || array[0] > 1{
            return 1
        }
        for i in 0..<array.count-1{
            if array[i+1] - array[i] > 1{
                return array[i] + 1
            }
        }
        return array.last! + 1
    }
}
