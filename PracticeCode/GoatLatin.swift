//
//  GoatLatin.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/28.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class GoatLatin {
    func toGoatLatin(_ S: String) -> String {
        var array = S.components(separatedBy: " ")
        for i in 0..<array.count{
            if isVowel(c: array[i].first!) == false{
                array[i].append(array[i].first!)
                array[i].remove(at: array[i].startIndex)
            }
            array[i].append("ma")
            for _ in 0..<i+1{
                array[i].append("a")
            }
        }
        return array.joined(separator: " ")
    }
    
    func isVowel(c:Character) -> Bool{
        let vowel:[Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        return vowel.contains(c)
    }
}
