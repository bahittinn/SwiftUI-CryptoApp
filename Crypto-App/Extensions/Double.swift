//
//  Double.swift
//  Crypto-App
//
//  Created by Bahittin on 29.09.2023.
//

import Foundation

extension Double {
    private var currenyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currenyFormatter.string(for: self) ?? "$0.00"
    }
}
