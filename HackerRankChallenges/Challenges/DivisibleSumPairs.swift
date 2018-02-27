//
//  Divisible.swift
//  HackerRankChallenges
//
//  Created by Admin on 2/27/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

func divisibleSumPairs() {
    let nk = [5,2]
    let nums = [6,8,9,12,10,32]
    // Enter your code here
    //let nk = readLine()!.components(separatedBy: " ").map{Int($0)!}
    //let nums = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let n = nk[0]
    let k = nk[1]
    
    var counter = 0
    var total = 0
    
    for i in 0..<(nums.count) {
        for j in 0..<(nums.count) {
            guard i < j else {continue}
            guard (nums[i] + nums[j]) % k == 0 else {continue}
            total += 1
        }
    }
    
    print(total)
}
