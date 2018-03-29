//
//  CountSubstrings.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class CountSubstrings {
    func countSubstrings(_ s: String) -> Int {
        var res = 0
        for i in 0..<s.count{
            res += 1 + helper(s: Array(s), left: i-1, right: i+1)
            res += helper(s: Array(s), left: i, right: i+1)
        }
        
        return res
    }
    
    func helper(s:[String.Element], left: Int, right: Int) -> Int{
        var count = 0
        var left = left
        var right = right
        while left >= 0 && right<s.count{
            if s[left] == s[right]{
                count += 1
                left -= 1
                right += 1
                print(left, right)
            }else{
                break
            }
        }
        
        return count
    }
}
