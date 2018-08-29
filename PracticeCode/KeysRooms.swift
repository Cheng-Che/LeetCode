//
//  KeysRooms.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/15.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class KeysRooms {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var keys:Set = [0]
        helper(rooms: rooms, index: 0, keys: &keys)
        return Set(0..<rooms.count) == keys ? true : false
    }
    func helper(rooms: [[Int]], index:Int, keys: inout Set<Int>){
        for i in rooms[index]{
            if keys.contains(i) == false && i < rooms.count{
                keys.insert(i)
                helper(rooms: rooms, index: i, keys: &keys)
            }
        }
    }
}
