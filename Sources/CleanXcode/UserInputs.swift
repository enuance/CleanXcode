//
//  UserInputs.swift
//  
//
//  Created by Stephen Martinez on 10/12/19.
//

import Foundation

enum Yes: String, CaseIterable {
    
    case Yes, yes, YES, Y, y, sure, okay
    
    static var possibleOptions: String {
        return Self.allCases
            .map { $0.rawValue }
            .joined(separator: " | ")
    }
}

enum No: String, CaseIterable {
    
    case No, no, NO, N, n, nope, nah
    
    static var possibleOptions: String {
        return Self.allCases
            .map { $0.rawValue }
            .joined(separator: " | ")
    }
}

enum BinaryResponse {
    case yes(Yes)
    case no(No)
    case undetermined
    
    init(_ response: String) {
        if let yes = Yes(rawValue: response) {
            self = .yes(yes)
        } else if let no = No(rawValue: response) {
            self = .no(no)
        } else {
            self = .undetermined
        }
    }
    
}
