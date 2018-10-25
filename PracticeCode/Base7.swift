//
//  Base7.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/1.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

//-32768--32767
import Foundation
class Base7 {
    func convertToBase7(_ num: Int) -> String {
        var input:Int = (num > 0) ? num : num * -1
        var remainder = input % 7
        var ans:String = "\(remainder)"
        
        while input >= 7{
            input -= remainder
            input = input/7
            remainder = input % 7
            ans.append(input < 7 ? "\(input)" : "\(remainder)")
        }
        return (num >= 0) ? String(ans.reversed()) : "-" + String(ans.reversed())
    }
}
