//
//  IsAlienSorted.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/12/27.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class IsAlienSorted {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        for i in 0..<words.count-1{
            let array1 = Array(words[i])
            let array2 = Array(words[i+1])
            guard words[i].hasPrefix(words[i+1]) == false else{
                return false
            }
            for j in 0..<min(array1.count, array2.count){
                if array1[j] != array2[j]{
                    if order.firstIndex(of: array2[j])! < order.firstIndex(of: array1[j])!{
                        return false
                    }
                    break
                }
            }
        }
        return true
    }
}
