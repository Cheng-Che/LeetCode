//
//  FindDisappearedNumbers.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/19.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FindDisappearedNumbers {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        if nums.count == 0 { return [] }
        var res = Array(1...nums.count)
        for i in 0..<nums.count{
            res[nums[i]-1] = 0
        }
        return res.filter({$0 != 0 })
    }
}
