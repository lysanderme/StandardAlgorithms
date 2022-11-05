//
//  main.swift
//  StandardAlgorithms
//
//  Created by Myrddin-Evans, Lysander (JD) on 05/11/2022.
//

import Foundation

func inchToCm(inch: Double) -> Double {
    let cm: Double = inch * 2.54
    return cm
}

print("Hello, Lysander!")

let question = "How are you today"
let message = "\(question)?"

print(message)

let centimetres = inchToCm(inch: 10)
print(centimetres)
