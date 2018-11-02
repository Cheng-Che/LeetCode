//
//  RobotSim.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/31.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class RobotSim {
    func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        var direction = 0 //0N, 1E, 2S, 3W
        var location = [0,0]
        var res = 0
        var obx:[Int:[Int]] = [:]
        var oby:[Int:[Int]] = [:]
        
        for array in obstacles{
            if obx[array[0]] == nil{
                obx[array[0]] = [array[1]]
            }else{
                obx[array[0]]?.append(array[1])
            }
            if oby[array[1]] == nil{
                oby[array[1]] = [array[0]]
            }else{
                oby[array[1]]?.append(array[0])
            }
        }
        
        for i in 0..<commands.count{
            if commands[i] == -1{
                direction = direction == 3 ? 0 : direction + 1
            }else if commands[i] == -2{
                direction = direction == 0 ? 3 : direction - 1
            }else{
                switch direction{
                case 1: //E
                    let stuck = oby[location[1]]?.filter({$0 > location[0]}).sorted(by:<).first
                    if stuck != nil && location[0] + commands[i] >= stuck!{
                        location[0] = stuck! - 1
                    }else{
                        location[0] += commands[i]
                    }
                case 2: //S
                    let stuck = obx[location[0]]?.filter({$0 < location[1]}).sorted(by:>).first

                    if stuck != nil && location[1] - commands[i] <= stuck!{
                        location[1] = stuck! + 1
                    }else{
                        location[1] -= commands[i]
                    }
                case 3: //W
                    let stuck = oby[location[1]]?.filter({$0 < location[0]}).sorted(by:>).first
                    if stuck != nil && location[0] - commands[i] <= stuck!{
                        location[0] = stuck! + 1
                    }else{
                        location[0] -= commands[i]
                    }
                default: //N
                    let stuck = obx[location[0]]?.filter({$0 > location[1]}).sorted(by:<).first
                    if stuck != nil && location[1] + commands[i] >= stuck!{
                        location[1] = stuck! - 1
                    }else{
                        location[1] += commands[i]
                    }
                }
                res = max(res, location[0]*location[0] + location[1]*location[1])
            }
        }
        return res
    }
}
