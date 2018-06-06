//
//  BeautifulArrangement2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/6.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class BeautifulArrangement2 {
    func constructArray(_ n: Int, _ k: Int) -> [Int] {
        var res:[Int] = []
        var bigNum = 1+k
        
        var i = 1
        while bigNum > i {
            res.append(i)
            res.append(bigNum)
            bigNum -= 1
            i+=1
        }
        if bigNum == i{
            res.append(i)
        }
        for j in 2+k..<n+1{
            res.append(j)
        }

        return res
    }
}
