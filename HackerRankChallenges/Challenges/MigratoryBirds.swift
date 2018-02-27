//
//  MigratoryBirds.swift
//  HackerRankChallenges
//
//  Created by Admin on 2/27/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

func migratoryBirds() {
    let arr = [1,2,3,3,3,4,4]
    // Enter your code here
    //let n = readLine()!
    //let arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    var counter = [0,0,0,0,0]
    
    arr.forEach {
        counter[$0 - 1] += 1
    }
    
    print(counter.index(of: counter.max()!)! + 1)
}
