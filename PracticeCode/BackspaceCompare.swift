//
//  BackspaceCompare.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/6.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class BackspaceCompare {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        var s = ""
        var t = ""
        
        for ch in S{
            if ch == "#" && s.count > 0{
                s.removeLast()
            }else if ch != "#"{
                s.append(ch)
            }
        }
        
        for ch in T{
            if ch == "#" && t.count > 0{
                t.removeLast()
            }else if ch != "#"{
                t.append(ch)
            }
        }
        
        return s == t
    }
}
