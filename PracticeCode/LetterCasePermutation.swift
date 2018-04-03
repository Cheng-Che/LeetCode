//
//  LetterCasePermutation.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/2.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class LetterCasePermutation {
    func letterCasePermutation(_ S: String) -> [String] {
        var res:[String] = [S]
        helper(res: &res, s: S, num: 0)
        return S.count == 0 ? [""] : res
    }
    
    func helper(res:inout [String] ,s:String, num:Int){
        var temp:[String] = s.map({String($0)})
        for i in num..<temp.count{
           if temp[i].unicodeScalars.first!.value > 64 && temp[i].unicodeScalars.first!.value < 91{
                let range = Range(s.index(s.startIndex, offsetBy: i)..<s.index(s.startIndex, offsetBy: i+1))
                res.append(s.replacingOccurrences(of: String(temp[i]), with: String(temp[i]).lowercased(), options: .regularExpression, range: range))
                helper(res: &res, s: res.last!, num: i+1)

            }else if temp[i].unicodeScalars.first!.value > 96 && temp[i].unicodeScalars.first!.value < 123{
                let range = Range(s.index(s.startIndex, offsetBy: i)..<s.index(s.startIndex, offsetBy: i+1))
                res.append(s.replacingOccurrences(of: String(temp[i]), with: String(temp[i]).uppercased(), options: .regularExpression, range: range))
                helper(res: &res, s: res.last!, num: i+1)
            }
        }
    }
}
