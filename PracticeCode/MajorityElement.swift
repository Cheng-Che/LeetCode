//
//  MajorityElement.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/3.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//


import Foundation

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var numDict:[Int:Int] = [:]
        for num in nums{
            numDict[num] = (numDict[num] ?? 0) + 1
        }
        return numDict.filter({$0.value == numDict.values.max()}).keys.first!
    }
}
