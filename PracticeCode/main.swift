//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//
import Foundation


var input = [[0,1,0,0],
             [1,1,1,0],
             [0,1,0,0],
             [0,1,0,0]]

let solution = IslandPerimeter()
let ans = solution.islandPerimeter(input)


print(ans)
