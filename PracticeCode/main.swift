//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

let nums = [0,0,3,4]
let target = 0
var ans:[Int] = []

let solution = Solution()
ans = solution.twoSum(nums, target)

print(ans)
