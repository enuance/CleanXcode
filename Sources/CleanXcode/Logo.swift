//
//  Logo.swift
//  
//
//  Created by Stephen Martinez on 10/12/19.
//

import Foundation

struct Logo {
    
    private static let value = #"""
    
   ______________________________________________
   __    __  ______   ______   ______     ______
    \    /  |  ____| | ____ | | ____ \   | _____|
     \  /   | |      | |  | | | |   \ \  | |
      \/    | |      | |  | | | |    \ | | |____
      /\    | |      | |  | | | |    / | |  ____|
     /  \   | |____  | |__| | | |___/ /  | |____
   _/_  _\_ |______| |______| |______/   |______|
    
   ----------------------------------------------
   CLEANER ULTRA-MAX 2000+
   ----------------------------------------------


"""#
    
    static func display() {
        print(Logo.value)
    }
    
}
