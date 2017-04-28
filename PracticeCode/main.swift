//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//
import Foundation

var n = [1,1,2, 3, 3, 5,7,7,7,7,8,8,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,10]


let solution = RemoveDuplicate()
let index:Int = solution.removeDuplicates(&n)
var ans:[Int] = []

for i in 0..<index{
    ans.append(n[i])
}


print(ans)
