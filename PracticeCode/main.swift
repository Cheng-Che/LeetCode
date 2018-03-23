//
//  main.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/24.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//
import Foundation


var input:[Character] = ["a", "b", "f", "f", "f", "f"]
var target:Character = "k"


let solution = FindSmallestLetter()
let ans = solution.nextGreatestLetter(input, target)


print(ans)
