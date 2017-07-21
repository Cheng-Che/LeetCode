//
//  ZumaGame4.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/20.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class ZumaGame4 {

    func findMinStep(_ board: String, _ hand: String) -> Int {
        
        var handRecord:[Character:Int] = [:]
        var res = 6
        
        for char in hand.characters{
            if handRecord[char] == nil{
                handRecord.updateValue(1, forKey: char)
            }else{
                handRecord[char]! += 1
            }
        }
        
        helper(board: board, hand: &handRecord, numsOfHand: hand.characters.count, res: &res, cur: 0)
        return res == 6 ? -1 : res
        
    }
    
    func helper(board:String, hand:inout [Character:Int], numsOfHand:Int, res: inout Int, cur:Int){
        if res<=0 || cur > numsOfHand{
            return
        }
        //print(board)
        //print(res)
        //print(cur)
        var i = 0
        let boardRecord = board.characters.map({ String($0) })
        
        while i<boardRecord.count{
            if i+1<boardRecord.count && boardRecord[i]==boardRecord[i+1]{
                if hand[Character(boardRecord[i])] != nil && hand[Character(boardRecord[i])]!>0{
                    hand[Character(boardRecord[i])]! -= 1
                    var nextBoard = boardRecord
                    nextBoard.insert(boardRecord[i], at: i)
                    nextBoard = refreshBoard(board: nextBoard)
                    print(nextBoard)
                    print(hand)
                    if nextBoard.count > 0{
                        helper(board: array2String(array: nextBoard), hand: &hand, numsOfHand: numsOfHand, res: &res, cur: cur+1)
                    }else{
                        res = min(res, cur + 1)
                    }
                    hand[Character(boardRecord[i])]! += 1
                    i+=1
                }
            }else{
                
                if hand[Character(boardRecord[i])] != nil && hand[Character(boardRecord[i])]!>=2{
                    hand[Character(boardRecord[i])]! -= 2
                    var nextBoard = boardRecord
                    nextBoard.insert(boardRecord[i], at: i)
                    nextBoard.insert(boardRecord[i], at: i)
                    nextBoard = refreshBoard(board: nextBoard)
                    print(nextBoard)
                    print(hand)
                    if nextBoard.count > 0{
                        helper(board: array2String(array: nextBoard), hand: &hand, numsOfHand: numsOfHand, res: &res, cur: cur+2)
                    }else{
                        res = min(res, cur + 2)
                    }
                    hand[Character(boardRecord[i])]! += 2
                    
                }
            }
            i+=1
        }
        
    }
    
    func refreshBoard(board:[String]) -> [String]{
        var boardRecord = board
        print("original \(board)")
        var count = 0
        for i in 0..<boardRecord.count{
            if i+1<boardRecord.count && boardRecord[i] == boardRecord[i+1]{
                count+=1
            }else{
                if count>=2{
                    for _ in 0..<count+1{
                        boardRecord.remove(at: i-count)
                    }
                    return refreshBoard(board:boardRecord)
                }
                count = 0
            }
        }
        print("board \(boardRecord)")
        return boardRecord
    }
    
    func array2String(array:[String])->String{
        var string:String = ""
        
        for i in array{
            string.append(i)
        }
        return string
        
    }
}
