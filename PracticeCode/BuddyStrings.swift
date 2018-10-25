//
//  BuddyStrings.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class BuddyStrings {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        guard A.count == B.count else{ return false }
        var dictA:[Character:Int] = [:]
        var dictB:[Character:Int] = [:]
        
        for ch in A{
            dictA[ch] = (dictA[ch] ?? 0) + 1
        }
        
        for ch in B{
            dictB[ch] = (dictB[ch] ?? 0) + 1
        }
        
        guard dictA == dictB else{
            return false
        }
        
        if A == B{
            for value in dictA.values{
                if value > 1{
                    return true
                }
            }
            return false
        }

        var a = Array(A)
        var b = Array(B)
        var wordA:[Character] = []
        var wordB:[Character] = []
        
        for i in 0..<a.count{
            if a[i] != b[i]{
                wordA.append(a[i])
                wordB.append(b[i])
            }
            if wordA.count == 2{
                if wordA == wordB.reversed(){
                    wordA.removeAll()
                    wordB.removeAll()
                }else{
                    wordA.removeLast()
                    wordB.removeLast()
                }
            }
        }
        return wordA.count == 0 ? true : false
    }
}
