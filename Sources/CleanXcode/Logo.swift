//
//  Logo.swift
//  
//
//  Created by Stephen Martinez on 10/12/19.
//

import Consler
import Foundation

struct Logo {
    
    private static let output = ConslerOutput(
        #"   ______________________________________________"#,
        #"   __    __ "#, #" ______   ______   ______     ______ "#,
        #"    \    /  "#, #"|  ____| | ____ | | ____ \   | _____|"#,
        #"     \  /   "#, #"| |      | |  | | | |   \ \  | |     "#,
        #"      \/    "#, #"| |      | |  | | | |    \ | | |____ "#,
        #"      /\    "#, #"| |      | |  | | | |    / | |  ____|"#,
        #"     /  \   "#, #"| |____  | |__| | | |___/ /  | |____ "#,
        #"   _/_  _\_ "#, #"|______| |______| |______/   |______|"#,
        #"                                                 "#,
        #"   ______________________________________________"#,
        #"   CLEANER ULTRA-MAX 2000+                       "#,
        #"   ______________________________________________"#,
        #"                                                 "#,
        #"                                                 "#
    ).describedBy(
        .boldRedEndsLine(0, 16, 18), .boldRed(1, 3, 5, 7, 9, 11, 13),
        .redEndsLine(2, 4, 6, 8, 10, 12, 14), .boldCyanEndsLine(17), .endsLine(15, 19, 20)
    )
    
    static func display() {
        Consler.output(output)
    }
    
}
