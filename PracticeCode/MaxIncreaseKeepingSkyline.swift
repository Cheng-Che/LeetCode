//
//  MaxIncreaseKeepingSkyline.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/20.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class MaxIncreaseKeepingSkyline {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var topLine:[Int] = []
        var leftLine:[Int] = grid[0]
        var total = 0
        
        for array in grid{
            topLine.append(array.max()!)
            for i in 0..<array.count{
                total += array[i]
                leftLine[i] = max(leftLine[i], array[i])
            }
        }
        
        for i in topLine{
            for j in leftLine{
                total -= min(i, j)
            }
        }
        return -(total)
    }
}
