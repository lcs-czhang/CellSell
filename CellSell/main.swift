//
//  main.swift
//  CellSell
//
//  Created by Yuzhou Zhang on 2024-09-17.
//

import Foundation
 
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 0
var eveningMinutes = 0
var weekendMinutes = 0

while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    if givenInteger < 0  {
        print("only input positive value")
        continue
    }
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    break
    
    
 
}

 


while true {
    
    // Prompt
    print("Number of evening minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    if givenInteger < 0  {
        print("only input positive value")
        continue
    }
    
    
    // Now we have an integer, break input loop
    eveningMinutes = givenInteger
    break
 
}



while true {
    
    // Prompt
    print("Number of weekend minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    if givenInteger < 0  {
        print("only input positive value")
        continue
    }
    
    // Now we have an integer, break input loop
    weekendMinutes = givenInteger
    break
 
}
// 2. Process

// Calculate costs for plan A
var a = 0

// Add daytime cost
if dayTimeMinutes > 100 {
    a += (dayTimeMinutes - 100) * 25
}

// Add evening cost
a += eveningMinutes * 15

// Add weekend cost
a += weekendMinutes * 20

// Calculate costs for plan B
var b = 0

// Add daytime cost
if dayTimeMinutes > 250{
    b += (dayTimeMinutes - 250) * 45
}

// Add evening cost
b += eveningMinutes * 35

// Add weekend cost
b += weekendMinutes * 25

// 3. Output
print("Plan A costs \(a/100).\(a%100)")
print("Plan B costs \(b/100).\(b%100)")

if a>b {
    print("Plan B is cheaper")
} else if a<b {
    print("Plan A is cheaper")
} else {
    print("the plans cost the same")
}
