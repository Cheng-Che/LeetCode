//
//  DeckRevealedIncreasing.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/12/4.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class DeckRevealedIncreasing {
    func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
        var array = Array(0..<deck.count)
        var res:[Int] = []
        let sort = deck.sorted()

        for _ in 0..<array.count-1{
            res.append(array.removeFirst())
            array.append(array.removeFirst())
        }
        res.append(array[0])

        return res.enumerated().sorted(by:{$0.element < $1.element}).map({$0.offset}).map({sort[$0]})
    }
}
