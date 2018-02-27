//
//  BetweenTwoSets.swift
//  HackerRankChallenges
//
//  Created by Admin on 2/26/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

func betweenTwoSets() {
    let first = [2,4]
    let second = [12,16,20,24]
    
    // Enter your code here
    
    //let nums = readLine()!
    
    //let first = readLine()!.components(separatedBy: " ").map{Int($0)!}
    //let second = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    let factors = first.sorted()
    let factorOfs = second.sorted()
    
    
    var betweens = Set<Int>()
    
    factors.forEach {
        var count = 1
        while($0 * count <= factorOfs.first!) {
            betweens.insert($0 * count)
            count += 1
        }
    }
    betweens.forEach {
        (mults) in
        factors.forEach {
            (num) in
            if mults % num != 0 {
                betweens.remove(mults)
            }
        }
        factorOfs.forEach {
            (big) in
            if big % mults != 0 {
                betweens.remove(mults)
            }
        }
    }
    print(betweens.count)
}
