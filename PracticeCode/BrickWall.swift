//
//  BrickWall.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/29.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class LeastBricks {
    func leastBricks(_ wall: [[Int]]) -> Int {
        var wallSum:[Int:Int] = [:]
        for i in 0..<wall.count{
            var temp = 0
            for j in 0..<wall[i].count-1{
                temp += wall[i][j]
                wallSum[temp] = (wallSum[temp] ?? 0) + 1
            }
        }
        return wall.count - (wallSum.values.max() ?? 0)
    }
}
