//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros
//The third element is the number of positive values.


func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var posNum = 0, negNum = 0, zero = 0
    
    for number in myArr{
        switch number{
        case _ where number > 0:
            posNum += 1
        case _ where number < 0:
            negNum += 1
        default:
            zero += 1
        }
    }
    
    return (negNum,zero,posNum)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count > 1 else { return nil }
    return myArr.sorted{$0 < $1}[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    
    for i in 2..<x{
        if x % i == 0{
            return false
        }
    }
    
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var outString:String = ""
    
    for char in s.characters{
        if char != c{
            outString += String(char)
        }
    }
    
    return outString
}
//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    
    var outString = ""
    for char in s.characters{
        if !arr.contains(char){
            outString += String(char)
        }
    }
    
    return outString
}

