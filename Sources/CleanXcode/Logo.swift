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
        .redEndsLine([.bold], at: 0, 16, 18),
        .red([.bold], at: 1, 3, 5, 7, 9, 11, 13),
        .redEndsLine(at: 2, 4, 6, 8, 10, 12, 14),
        .cyanEndsLine([.bold], at: 17),
        .endsLine(at: 15, 19, 20)
    )
    
    static func display() {
        Consler.output(output)
    }
}
