//
//  IntegerExtensions.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import Foundation

// Extension on Int to format large numbers with abbreviations
extension Int {
    func formattedString() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 1
        
        let thousand = 1000
        let million = thousand * thousand
        
        if self >= million {
            let formattedNumber = Double(self) / Double(million)
            return "\(formatter.string(from: NSNumber(value: formattedNumber)) ?? "")M" // Format number in millions
        } else if self >= thousand {
            let formattedNumber = Double(self) / Double(thousand)
            return "\(formatter.string(from: NSNumber(value: formattedNumber)) ?? "")K" // Format number in thousands
        } else {
            return "\(self)" // Return the number as is
        }
    }
}

