//
//  ShortestToChar.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/12.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ShortestToChar {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var res:[Int] = []
        var lastNum = -1
        let array = Array(S)
        for i in 0..<array.count{
            if array[i] == C{
                if lastNum == -1{  //first
                    for j in stride(from: i, to: 0, by: -1){
                        res.append(j)
                    }
                }else{
                    var resTemp:[Int] = []
                    if (i - lastNum) % 2 == 0{
                        for j in 1..<(i - lastNum)/2+1{
                            resTemp.append(j)
                        }
                        res += resTemp
                        resTemp.removeLast()
                        res += resTemp.reversed()
                    }else if (i - lastNum) > 1 && (i - lastNum) % 2 == 1{
                        for j in 1..<(i - lastNum)/2+1{
                            resTemp.append(j)
                        }
                        res = res + resTemp + resTemp.reversed()
                    }
                }
                res.append(0)
                lastNum = i
            }
        }
        
        for i in 0..<array.count - res.count{
            res.append(i+1)
        }
        return res
    }
}
