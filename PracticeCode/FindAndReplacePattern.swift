//
//  FindAndReplacePattern.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/3.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FindAndReplacePattern {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        var patternArray:[Int] = []
        var res:[String] = []
        var wordsSet:[String] = words
        wordsSet.insert(pattern, at: 0)
        
        for s in wordsSet{
            var tempDict:[Character: Int] = [:]
            var temp = 0
            var tempArray:[Int] = []
            for ch in s{
                if tempDict[ch] == nil{  //未重複
                    tempDict[ch] = temp
                    tempArray.append(temp)
                    temp += 1
                }else{
                    tempArray.append(tempDict[ch]!)
                }
            }
            
            if patternArray.count == 0{
                patternArray = tempArray
            }else if patternArray == tempArray{
                res.append(s)
            }
        }
        return res
    }
}
