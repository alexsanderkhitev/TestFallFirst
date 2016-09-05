//
//  NumberConverter.swift
//  TestFallFirst
//
//  Created by Alexsander Khitev on 9/5/16.
//  Copyright © 2016 Alexsander Khitev. All rights reserved.
//

import Foundation

public class NumberConverter {
    
    // MARK: - Functions
    
    public func convert(digit: Int) -> String {
        let digitString = String(digit).characters.count
        switch digitString {
        case 1:
            let value = singleDigit(digit, showZero: true)
            return value
        case 2:
            let value = tensDigit(digit)
            return value
        case 3:
            let value = hundredDigit(digit)
            return value
        default: return ""
        }
    }
    
    // MARK: - level numbers functions 
    private func singleDigit(digit: Int, showZero: Bool) -> String {
        switch digit {
        case 0:
            if showZero == true {
                return "ноль"
            } else {
                return ""
            }
        case 1:
            return "один"
        case 2:
            return "два"
        case 3:
            return "три"
        case 4:
            return "четыре"
        case 5:
            return "пять"
        case 6:
            return "шесть"
        case 7:
            return "семь"
        case 8:
            return "восемь"
        case 9:
            return "девять"
        default: return ""
        }
    }
    
    private func tensDigit(digit: Int) -> String {
        let digitStringsArray = String(digit).characters.map { String($0) }
        guard let firstDigitString = digitStringsArray.first else { return "" }
        guard let secondDigitString = digitStringsArray.last else { return "" }
        guard let firstDigit = Int(firstDigitString) else { return "" }
        guard let secondDigit = Int(secondDigitString) else { return "" }
        switch firstDigit {
        case 1:
            let value = teensDigits(digit)
            return value
        case 2:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "двадцать".stringByAppendingString(" ") + secondValue
        case 3:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "тридцать".stringByAppendingString(" ") + secondValue
        case 4:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "сорок".stringByAppendingString(" ") + secondValue
        case 5:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "пятьдесят".stringByAppendingString(" ") + secondValue
        case 6:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "шестьдесят".stringByAppendingString(" ") + secondValue
        case 7:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "семьдесят".stringByAppendingString(" ") + secondValue
        case 8:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "восемьдесят".stringByAppendingString(" ") + secondValue
        case 9:
            let secondValue = singleDigit(secondDigit, showZero: false)
            return "девяносто".stringByAppendingString(" ") + secondValue
        default: return ""
        }
    }
    
    private func teensDigits(digit: Int) -> String {
        let digitStringsArray = String(digit).characters.map { String($0) }
        guard let secondDigitString = digitStringsArray.last else { return "" }
        guard let secondDigit = Int(secondDigitString) else { return "" }
        switch secondDigit {
        case 0:
            return "десять"
        case 1:
            return "одиннадцать"
        case 2:
            return "двенадцать"
        case 3:
            return "тринадцать"
        case 4:
            return "четырнадцать"
        case 5:
            return "пятнадцать"
        case 6:
            return "шестнадцать"
        case 7:
            return "семнадцать"
        case 8:
            return "восемнадцать"
        case 9:
            return "девятнадцать"
        default:
            return ""
        }
    }
    
    private func hundredDigit(digit: Int) -> String {
        let digitStringsArray = String(digit).characters.map { String($0) }
        guard let firstDigitString = digitStringsArray.first else { return "" }
        guard let firstDigit = Int(firstDigitString) else { return "" }
        switch firstDigit {
        case 1:
            return "сто"
        default: return ""
        }

    }
}