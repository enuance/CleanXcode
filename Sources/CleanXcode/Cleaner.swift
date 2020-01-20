//
//  Cleaner.swift
//  
//
//  Created by Stephen Martinez on 10/12/19.
//

import Foundation
import Files
import Consler

struct Cleaner {

    func provideWarning() {
        let warningOutput = ConslerOutput(
            "Running this program will make irreversible changes.", "",
            "Are you sure you want to", " delete ", "all of Xcode's Derived",
            "Data and Device Support files from this computer?", "")
            .describedBy(.endsLine(0, 1, 4, 5, 6), .normal(2), .boldRed(3))
        Consler.output(warningOutput)
    }
    
    func shouldProceed() -> Bool {
        Consler.output(
            "Continue? ","[", "Yes", "/", "No","]","",
            descriptors: [.normal, .yellow, .boldRed, .yellow, .normal, .yellow])
        
        guard let response = readLine() else {
            fatalError("Unable to get retrieve your response!")
        }
        let userResponse = BinaryResponse(response)
        switch userResponse {
        case .yes:
            return true
        case .no:
            return false
        case .undetermined:
            Consler.output(
                ["Error: ", "Your entry was unrecognized",
                 "For Yes, you can enter: ", "[\(Yes.possibleOptions)]",
                 "For No, you can enter: ", "[\(No.possibleOptions)]"],
                descriptors: [.boldRed, .redEndsLine, .normal, .endsLine],
                type: .error)
            
            return shouldProceed()
        }
    }
    
    func clean(at path: SubPath) throws {
        guard let cleanableFolder = try? Folder(path: Path(path).value) else {
            Consler.output(
                "Error: ", "🤷‍♂️   Could not locate \(path.rawValue)   🤷‍♂️", "",
                descriptors: [.boldRed, .endsLine],
                type: .error)
            
            throw LocationError(path: path.rawValue, reason: .missing)
        }
        
        Consler.output(
            "🧼🧼🧼   ", "Cleaning out \(path.rawValue)...", "   🧼🧼🧼",
            descriptors: [.normal, .cyan])
        
        try cleanableFolder.empty(includingHidden: true)
    }
    
    func startCleaning() throws {
        try clean(at: .derivedData)
        try clean(at: .deviceSupport)
    }
    
}
