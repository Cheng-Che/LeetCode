//
//  LicenseKeyFormatting.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/6.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class LicenseKeyFormatting {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        var inputArray:[String] = S.uppercased().map({ String($0) })
        var ans:String = ""
        var i = inputArray.count-1
        while i >= 0{
            var j = 0
            while j < K && i>=0 {
                if inputArray[i] != "-"{
                    ans.append(inputArray[i])
                    j+=1
                }
                i-=1
            }
            if j==K { ans.append("-") }
        }
        ans.removeLast()
        return String(ans.reversed())
    }
}
