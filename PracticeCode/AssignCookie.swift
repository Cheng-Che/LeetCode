//
//  AssignCookie.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/5.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class AssignCookie {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var sortG = g.sorted()
        var sortS = s.sorted()
        var res = 0
        
        var j = 0
        while res<sortG.count && j<sortS.count{
            if sortS[j] >= sortG[res]{
                res+=1
            }
            j+=1
        }
        return res
    }
}
