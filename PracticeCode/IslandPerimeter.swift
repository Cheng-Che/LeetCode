//
//  IslandPerimeter.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/23.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class IslandPerimeter {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var count = 0
        for i in 0..<grid.count{
           for j in 0..<grid[i].count{
                if grid[i][j] == 1{
                    count += helper(grid, x: i, y: j)
                }
           }
        }
        return count
    }
    
    private func helper(_ grid:[[Int]], x:Int, y:Int) -> Int{
        var count = 0
        if x == 0 || grid[x-1][y] == 0{ // up
            count += 1
        }
        if x+1 == grid.count || grid[x+1][y] == 0{ //down
            count += 1
        }
        if y == 0 || grid[x][y-1] == 0{ //left
            count += 1
        }
        if y+1 == grid[x].count || grid[x][y+1] == 0{ //right
            count += 1
        }
        return count
    }
}
