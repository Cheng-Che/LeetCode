//
//  CombinationSum3.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/7.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class CombinationSum3 {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res:[[Int]] = []
        helper(start: 1, n: n, k: k-1, res: &res, list:[])
        return k == 1 ? [[n]] : res
    }
    
    private func helper(start:Int, n:Int, k:Int, res:inout[[Int]], list:[Int]){
        guard start < n+1 else { return }
        var list = list
        if k == 0{
            if n < 10 {
                list.append(n)
                res.append(list)
            }
        }else{
            for i in start..<10{
                list.append(i)
                helper(start: i+1, n: n-i, k: k-1, res: &res, list: list)
                list.removeLast()
            }
        }
    }
}
