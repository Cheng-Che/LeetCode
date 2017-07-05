//
//  MissingNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation


class MissingNumber {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = 0
        var i = 0
        while i < nums.count {
            result = result ^ i ^ nums[i]
            i += 1
        }
        return result ^ i
    }
}
