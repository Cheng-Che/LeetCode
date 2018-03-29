//
//  UpdateBoard.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/28.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class UpdateBoard {
    func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
        var boardTemp : [[Int]] = []
        var board = board
        
        if board[click[0]][click[1]] == "M"{ //第一次就踩到 直接結束
            board[click[0]][click[1]] = "X"
            return board
        }
        
        for array in board{
            var temp:[Int] = []
            for unit in array{
                if unit == "E" || unit == "B"{
                    temp.append(0)
                }else if unit == "1"{
                    temp.append(1)
                }else if unit == "M"{
                    temp.append(-3000)
                }
            }
            boardTemp.append(temp)
        }
        
        for key in 0..<boardTemp.count{
            for num in 0..<boardTemp[key].count{
                if boardTemp[key][num] < 0{
                    helper(boardTemp: &boardTemp, key: key, num: num)
                }
            }
        }
        helper2(boardTemp: boardTemp, board: &board, key: click[0], num: click[1])
        
        for i in board{
            print(i)
        }
        return board
    }
    
    func helper2(boardTemp:[[Int]], board:inout[[Character]], key:Int, num:Int){
        print("check\(key, num)")
        guard key >= 0 && key < boardTemp.count && num >= 0 && num < boardTemp[0].count && board[key][num] != "B" else {
            return
        }
        if boardTemp[key][num] > 0{
            board[key][num] = Character("\(boardTemp[key][num])")
        }else if boardTemp[key][num] == 0{
            
            board[key][num] = "B"
            helper2(boardTemp: boardTemp, board: &board, key: key+1, num: num)
            helper2(boardTemp: boardTemp, board: &board, key: key-1, num: num)
            helper2(boardTemp: boardTemp, board: &board, key: key, num: num+1)
            helper2(boardTemp: boardTemp, board: &board, key: key, num: num-1)
        }
        
        
    }
    
    func helper(boardTemp:inout [[Int]], key:Int, num:Int){
        if key + 1 < boardTemp.count{
            boardTemp[key+1][num] += 1
        }
        if key > 0{
             boardTemp[key-1][num] += 1
        }
        if num + 1 < boardTemp[0].count{
            boardTemp[key][num+1] += 1
        }
        if num > 0{
            boardTemp[key][num-1] += 1
        }
        if key + 1 < boardTemp.count && num + 1 < boardTemp[0].count{
            boardTemp[key+1][num+1] += 1
        }
        if key > 0 && num > 0{
            boardTemp[key-1][num-1] += 1
        }
        if key + 1 < boardTemp.count && num > 0{
             boardTemp[key+1][num-1] += 1
        }
        if key > 0 && num + 1 < boardTemp[0].count{
            boardTemp[key-1][num+1] += 1
        }
        
    }
}
