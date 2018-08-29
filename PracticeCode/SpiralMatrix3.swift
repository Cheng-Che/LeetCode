//
//  SpiralMatrix3.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/16.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class SpiralMatrix3 {
    func spiralMatrixIII(_ R: Int, _ C: Int, _ r0: Int, _ c0: Int) -> [[Int]] {
        var res:[[Int]] = [[r0, c0]]
        var x = r0
        var y = c0
        var count = 1
        var i = 0
        var direction = [[0,1], [1, 0], [0 ,-1], [-1, 0]]
        while res.count < R * C{  // 0:right , 1:down , 2:left , 3: up
            for _ in 0..<count{
                x += direction[i][0]
                y += direction[i][1]
                if x<R && x >= 0 && y<C && y >= 0{
                    res.append([x, y])
                }
            }

            i = i == 3 ? 0 : i + 1
            count = i % 2 == 0 ? count + 1 : count
        }
        return res
    }
}
