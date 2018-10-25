//
//  GroupAnagrams.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/25.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res:[String:[String]] = [:]
        var sorted = strs.map({String($0.sorted())})
        for i in 0..<sorted.count{
            if res[sorted[i]] == nil{
                res[sorted[i]] = [strs[i]]
            }else{
                res[sorted[i]]?.append(strs[i])
            }
        }
        return Array(res.values)
    }
}
