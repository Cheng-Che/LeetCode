//
//  BeautifulArrangement.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/26.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class BeautifulArrangement {
    func countArrangement(_ N: Int) -> Int {
    
        var items:[[Int]] = [Array(1...N)]
        
        for i in 1..<items[0].count{
            var arr:[Int] = [1]
            for j in 2..<N+1{
                if j < i+1 && (i+1) % j == 0{ // 因數
                    arr.append(j)
                }else if j >= i+1 && j % (i+1) == 0{ // 倍數
                    arr.append(j)
                }
            }
            items.append(arr)
        }
        
       print(items)

        
        for i in 0..<N{
            var arr = [items[0][i]]
            helper(items:items, arr: &arr, begin: 1, end: N-1, array:arr)
        }
        return 0
  
    }
    func helper(items:[[Int]], arr: inout[Int], begin:Int, end:Int, array:[Int]){
        //print(arr)
        if begin == end+1{
            print(arr)
            print("end")
            return
        }else{
            
            for i in 0..<items[begin].count{
               print(begin)
                if arr.contains(items[begin][i]) == false{
                    arr.append(items[begin][i])
                    helper(items:items, arr: &arr, begin: begin+1, end: end, array: array)
                    arr = array
                }
            }
            //helper(items:items, arr: &arr, begin: begin+1, end: end)
            
        }
    }

}
