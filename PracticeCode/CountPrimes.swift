//
//  CountPrimes.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/2.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class CountPrimes {
    func countPrimes(_ n: Int) -> Int {
        if n <= 2 { return 0 }
        var notPrime:[Bool] = []
        for i in 0..<n{
            if i%2 == 0 { notPrime.append(true) }
            else {notPrime.append(false)}
        }
        var count = 1
        var num = 3
        while num < n{
            if notPrime[num] == false{
                count += 1
                var j = num
                while j*num < n{
                    notPrime[num*j] = true
                    j+=2
                }
            }
            num += 2
            
        }
        return count
    }
}

// func will time out

/*
var ans:[Int] = []
var num = 2
while num < n-1{
    var count = 0
    for i in 2..<Int(sqrt(Double(num)))+1{
        if num % i == 0{
            count += 1
        }
    }
    if count == 0{
        ans.append(num)
    }
    num+=1
}
print(ans)
return ans.count

*/
