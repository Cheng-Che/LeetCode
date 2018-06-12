//
//  FindAnagrams.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/11.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FindAnagrams {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        guard p.count <= s.count else { return [] }
        let count = p.count
        let array = Array(s)
        var res:[Int] = []
        var dict:[Character:Int] = [:]
        var dictP:[Character:Int] = [:]
        
        for i in p{
            dictP[i] = (dictP[i] ?? 0) + 1
        }
        
        for i in array[0..<p.count]{
            dict[i] = (dict[i] ?? 0) + 1
        }
        
        if dict == dictP{
            res.append(0)
        }
        
        for i in 1..<s.count-count+1{
            if array[i-1] == array[i+count-1] && dict == dictP{
                res.append(i)
            }else{
                dict[array[i-1]]! -= 1
                if dict[array[i-1]] == 0{
                    dict.removeValue(forKey: array[i-1])
                }
                dict[array[i+count-1]] = (dict[array[i+count-1]] ?? 0 ) + 1
                if dict == dictP{
                    res.append(i)
                }
            }
            
        }
        return res
    }
}

/*
 guard p.count <= s.count else { return [] }
 let sortP = p.sorted()
 let array = Array(s)
 var res:[Int] = []
 for i in 0..<s.count-p.count+1{
 if array[i..<i+p.count].sorted() == sortP{
 res.append(i)
 }
 }
 return res
 */
