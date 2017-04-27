//
//  countAndSay.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/27.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class CountAndSay {
    func countAndSay(_ n: Int) -> String {
        
        var previousString = "1"
        var index = 0
        
        while index < n-1{
  
            var charArray = previousString.characters.map({ String($0) })  // String to Array
            var tempAns:String = ""
            var i = 0
            
            while i < charArray.count{
                
                var charCount = 1
                var j = i
                
                while j+1 < charArray.count && charArray[i] == charArray[j+1]{ // find duplicates numbers
                    charCount += 1
                    j += 1
                }
                
                tempAns.append("\(charCount)\(charArray[i])")
                i = j+1        // jump to next no-repeat char

            }
            previousString = tempAns
            index += 1
        }
        
        return previousString
    }
}
