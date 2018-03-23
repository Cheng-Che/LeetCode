//
//  FindSmallestLetter.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/23.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class  FindSmallestLetter {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        for ch in letters{
            if ch > target{
                return ch
            }
        }
        return letters[0]
    }
}
