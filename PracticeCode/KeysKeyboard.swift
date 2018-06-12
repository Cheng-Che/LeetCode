//
//  KeysKeyboard.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/8.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class KeysKeyboard{
    func minSteps(_ n: Int) -> Int {
        var res = 0
        res += helper(n: n, k: 0)
        return res
    }   
    
    private func helper(n:Int, k:Int) -> Int{
        let prime = [2,3,5,7,11,13,17,19,23,29,31]
        if n == 1{
            return 0
        }else if k == 11 {
            return n
        }
        if n % prime[k] == 0{
            return prime[k] + helper(n: n/prime[k], k: k)
        }else{
            return helper(n: n, k: k+1)
        }
    }
}
