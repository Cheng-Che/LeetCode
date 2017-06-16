//
//  SpiralMatrix2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/16.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class SpiralMatrix2{
    func generateMatrix(_ n: Int) -> [[Int]] {
        
        if n <= 0 { return [] }
        var ans:[[Int]] = [Array(1...n)]
        var i = 1  //加入哪個array
        var num = n+1
        var vp = 1  //垂直時加入位置
        var hp = 1
        var repeatPlus = n-2
        var toRight = true   //向下必向左
        
        //外圈
        for _ in 0..<n-1{   //right
            ans.append([num])
            num+=1
        }
        for _ in 0..<n-1{  // bottom
            ans[n-1].insert(num, at: 0)
            num+=1
        }
        for j in stride(from: n-2, to: 0, by: -1){  //left
            ans[j].insert(num, at: 0)
            num+=1
        }
   
        //內圈
        while num <= n*n{
            //平(第二次開始insert)
            for _ in 0..<repeatPlus{
                
                ans[i].insert(num, at: (toRight == true) ? hp : vp)
                hp+=1
                num+=1
            }
            //垂直
            repeatPlus -= 1
            for _ in 0..<repeatPlus{
                i += (toRight == true) ? 1 : -1
                ans[i].insert(num, at: vp)
                num+=1
            }
            if toRight == false{ vp += 1 }
            hp = vp
            toRight = !toRight
        }
       
        return ans
    }
}
