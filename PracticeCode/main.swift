//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

let nums = [5,4,3,2]
let target = 0
var ans = 0

let solution = SearchInsert()
ans = solution.searchInsert(nums, target)

print(ans)
