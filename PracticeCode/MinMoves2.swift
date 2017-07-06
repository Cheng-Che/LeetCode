//
//  MinMoves2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/6.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class MinMoves2 {
    func minMoves2(_ nums: [Int]) -> Int {
        let sorted = nums.sorted(by: <)
        let middle = nums.count/2
        var ans = 0
        for i in sorted{
            ans += abs(sorted[middle] - i)
        }

        return ans
    }
}
