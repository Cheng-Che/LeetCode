//
//  LongestChain.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/3.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class LongestChain {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        guard pairs.count > 0 else { return 0 }
        let sort = pairs.sorted(by: { $0.last! < $1.last! })
        var end = sort[0][1]
        var res = 1
        for i in 1..<sort.count{
            if sort[i][0] > end{
                res += 1
                end = sort[i][1]
            }
        }
        return res
    }
}
