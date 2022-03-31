//
//  ClassMarks.swift
//
//  Created by Layla Michel
//  Created on 2022-03-21
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  This program allows users to play a game of
// rock, paper, scissors.

import Foundation

func rps(user: String) -> String {
    // Generates random number from 1 to 3 for computer
    let computerInt = Int.random(in: 1...3)

    var outputString = ""

    // Assigns each number with either rock, paper or scissors
    if computerInt == 1 {
        let computerString = "rock"

        // Checks and displays if user tied, won or lost
        if user == computerString.uppercased {
            outputString = "You both drew rock, it's a tie."
        } else if user == "PAPER" {
            outputString = "The computer drew rock, you won!"
        } else if user == "SCISSORS" {
            outputString = "The computer drew rock, you lose..."
        }

    } else if computerInt == 2 {
        let computerString = "paper"

        // Checks and displays if user tied, won or lost
        if user == computerString.uppercased {
            outputString = "You both drew paper, it's a tie."
        } else if user == "SCISSORS" {
            outputString = "The computer drew paper, you won!"
        } else if user == "ROCK" {
            outputString = "The computer drew paper, you lose..."
        }

    } else if computerInt == 3 {
        let computerString = "scissors"

        // Checks and displays if user tied, won or lost
        if user == computerString.uppercased {
            outputString = "You both drew scissors, it's a tie."
        } else if user == "ROCK" {
            outputString = "The computer drew scissors, you won!"
        } else if user == "PAPER" {
            outputString = "The computer drew scissors, you lose..."
        }
    }

    return outputString
}

print("Welcome to Rock, Paper, Scissors!")

while true {
    print("Enter either rock, paper or scissors: ", terminator: "")
    let userInput = readLine()

    // Checks if user inputed one of three options
    if userInput!.uppercased == "ROCK" || userInput!.uppercased == "PAPER" || userInput!.uppercased == "SCISSORS" {
        var userUpper = ""
        // Converts user input into all uppercase
        userUpper = userInput!.uppercased
        let output = rps(user: userUpper)
        print(output)
        break
    } else {
        // Error message if it's none of the three options
        print("Please enter one of the three choices.\n")
    }
}
