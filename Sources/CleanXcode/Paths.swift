//
//  File.swift
//  
//
//  Created by Stephen Martinez on 11/30/19.
//

import Foundation

enum SubPath: String {
    
    case derivedData = "DerivedData"
    case deviceSupport = "iOS DeviceSupport"
    
}

struct Path {
    
    private static let xcode = "~/Library/Developer/Xcode/"
    
    let subPath: SubPath
    
    init(_ subPath: SubPath) { self.subPath = subPath }
    
    var value: String { Path.xcode + subPath.rawValue }
    
}
