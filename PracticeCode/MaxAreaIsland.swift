//
//  MaxAreaIsland.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/26.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class MaxAreaIsland {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var resultArray:[Int] = []
        for i in 0..<grid.count{
            for j in 0..<grid[i].count{
                if grid[i][j] == 1{
                    resultArray.append(helper(gridDict: &grid, key: i, num: j))
                }
            }
        }
        return resultArray.count == 0 ? 0 : resultArray.max()!
    }
    
    func helper(gridDict:inout[[Int]], key:Int, num:Int) -> Int{
        var result = 1
        gridDict[key][num] = 0

        if num+1<gridDict[key].count && gridDict[key][num + 1] == 1{
            result += helper(gridDict:&gridDict, key:key, num: num+1)
        }
        if num - 1 >= 0 && gridDict[key][num-1] == 1{
            result += helper(gridDict:&gridDict, key:key, num: num-1)
        }
        if key+1 < gridDict.count && gridDict[key+1][num] == 1{
            result += helper(gridDict:&gridDict, key:key+1 ,num: num)
        }
        if key-1 >= 0 && gridDict[key-1][num] == 1{
            result += helper(gridDict:&gridDict, key:key-1, num: num)
        }
        return result
    }
    
}
