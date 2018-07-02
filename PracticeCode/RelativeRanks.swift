//
//  RelativeRanks.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/2.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class RelativeRanks {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        var award = ["Gold Medal", "Silver Medal", "Bronze Medal"]
        var res = nums.map{ String($0) }
        let sort = nums.enumerated().sorted(by:{$0.element > $1.element}).map{$0.offset}
        for i in 0..<sort.count{
            res[sort[i]] = i<3 ? award[i] : "\(i+1)"
        }
        return res
    }
}
