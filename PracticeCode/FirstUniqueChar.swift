//
//  FirstUniqueChar.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/5/4.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class FirstUniqueChar {
    func firstUniqChar(_ s: String) -> Int {
        let stringArray = Array(s)
        var dict:[Character:Int] = [:]
        var ans:Int!
        for i in 0..<stringArray.count{
            dict[stringArray[i]] = dict[stringArray[i]] == nil ? i : -1
        }
        for bas in dict{
            if bas.value >= 0{
                if ans == nil || bas.value < ans{
                    ans = bas.value
                }
            }
        }
        return ans == nil ? -1 : ans
    }
}

/*  time out
 
var array:[String] = stringArray
array[i] = ""
if array.index(of: stringArray[i]) == nil{
    return i
}
 
 
if repeatChar.contains(stringArray[i]) == false{ //無重複
   if i + reverseArray.index(of: stringArray[i])! == stringArray.count-1{
      return i
   }else{
      if repeatChar.contains(stringArray[i]) == false{
          repeatChar.append(stringArray[i])
      }
   }
}
 */
