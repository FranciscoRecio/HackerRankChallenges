//
//  BirthdayChocolate.swift
//  HackerRankChallenges
//
//  Created by Admin on 2/27/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

func birthdayChocolate() {
    
    let bar = [1,2,3,4]
    let date = [5,2]
    
    // Enter your code here
    //let n = readLine()!
    //let bar = readLine()!.components(separatedBy: " ").map{Int($0)!}
    //let date = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    let d = date[0]
    let m = date[1]
    
    var incrementer = 0
    var count = 0
    
    while(incrementer <= bar.count - m) {
        var sum = 0
        for i in 0..<m {
            sum += bar[incrementer + i]
        }
        if sum == d {
            count += 1
        }
        incrementer += 1
    }
    
    print(count)
}
