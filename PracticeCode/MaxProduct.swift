//
//  MaxProduct.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/8.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//
//45.8
import Foundation

class MaxProduct {
    func maxProduct(_ words: [String]) -> Int {
        if words.count < 2 { return 0 }
        let charArray = Array(97...122).map({Character(UnicodeScalar($0)!)})
        var uni:[[Character:Bool]] = []
        var res = 0
        
        for i in 0..<words.count{
            uni.append(getUniChar(array: charArray, string: words[i]))
        }
        
        for i in 0..<uni.count{
            for j in i+1..<uni.count{
                var count = 0
                for key in uni[i].keys{
                    if uni[j][key] == true { break } else { count += 1 }
                    if count == uni[i].keys.count && words[i].count * words[j].count > res{
                        res = words[i].count * words[j].count
                    }
                }
            }
        }
        
        return res
    }
    
    func getUniChar(array:[Character], string:String) -> [Character:Bool]{
        var temp:[Character:Bool] = [:]
        for ch in string{
            if temp[ch] == nil{
                temp[ch] = true
            }
        }
        return temp
    }
}
