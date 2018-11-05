//
//  MinFallingPathSum.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/11/2.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class MinFallingPathSum {
    func minFallingPathSum(_ A: [[Int]]) -> Int {
        var dp:[Int] = A[0]
        for i in 1..<A.count{
            var temp:[Int] = []
            for j in 0..<A.count{
                temp.append(A[i][j] + minNum(array: dp, j: j))
            }
            dp = temp
        }
        return dp.min()!
    }
    
    func minNum(array:[Int], j:Int) -> Int{
        if j == 0{
            return min(array[0], array[1])
        }
        if j == array.count-1{
            return min(array[j], array[j-1])
        }
        return min(array[j-1], array[j], array[j+1])
    }
}
