//
//  ContainsDuplicate.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/6.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ContainsDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict : [Int:Bool] = [:]
        for i in nums{
            if dict[i] == nil{
                dict[i] = true
            }else if dict[i] == true{
                return true
            }
        }
        return false
    }
}
