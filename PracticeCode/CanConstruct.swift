//
//  CanConstruct.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/10.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class CanConstruct {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineSet:[Character:Int] = [:]
        for ch in magazine{
            magazineSet[ch] = (magazineSet[ch] ?? 0) + 1
        }
        for ch in ransomNote{
            if magazineSet[ch] == nil || magazineSet[ch]! == 0{
                return false
            }
            magazineSet[ch]! -= 1
        }
        return true
    }
}
