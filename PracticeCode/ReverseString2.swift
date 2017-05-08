//
//  ReverseString2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/5/8.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class ReverseString2 {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var stringArray = s.characters.map({ String($0) })
        var ans:String = ""
        var i = 0
        if k <= 0 {return "Length of the given string and k will in the range [1, 10000]"}
        
        while i < stringArray.count{
            var j = 0
            var temp:[String] = []
            while j < k && i < stringArray.count {  //reverse
                
                temp.append(stringArray[i])
                j += 1
                i += 1
            }

            ans.append(temp.reversed().joined(separator: ""))

            while j < 2*k && i < stringArray.count{  //same
                ans.append(stringArray[i])
                i += 1
                j += 1
            }
        }
        return k==1 ? s : ans
    }
    

}
