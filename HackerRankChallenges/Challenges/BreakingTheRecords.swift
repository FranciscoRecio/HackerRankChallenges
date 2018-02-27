//
//  BreakingTheRecords.swift
//  HackerRankChallenges
//
//  Created by Admin on 2/27/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

func breakingTheRecords() {
    let scores = [1,10,12,90,3,45]
    // Enter your code here
    //let n = readLine()!
    //let scores = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    var high = scores[0]
    var low = scores[0]
    
    var numHigh = 0
    var numLow = 0
    
    scores.forEach {
        if $0 > high {
            numHigh += 1
            high = $0
        } else if $0 < low {
            numLow += 1
            low = $0
        }
    }
    
    print("\(numHigh) \(numLow)")
}
