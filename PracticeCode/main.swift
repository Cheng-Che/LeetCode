//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

let nums = [2, 7 , 9 , 13]
let target = 9
var ans:[Int] = []

let solution = Solution()
ans = solution.twoSum(nums, target)

print(ans)
