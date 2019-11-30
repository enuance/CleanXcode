//
//  Cleaner.swift
//  
//
//  Created by Stephen Martinez on 10/12/19.
//

import Foundation
import Files

struct Cleaner {

    func provideWarning() {
        let warning = """
        Running this program will make irreversible changes.

        Are you sure you want to delete all of Xcode's Derived
        Data and Device Support files from this computer?
        """
        print(warning)
    }
    
    func shouldProceed() -> Bool {
        print("\nContinue? Yes/No")
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
            print("Your entry was unrecognized")
            print("\nFor Yes, you can enter:\n \(Yes.possibleOptions)")
            print("\nFor No, you can enter:\n \(No.possibleOptions)")
            return shouldProceed()
        }
    }
    
    func clean(at path: SubPath) throws {
        guard let cleanableFolder = try? Folder(path: Path(path).value) else {
            print("Could not locate \(path.rawValue)")
            throw LocationError(path: path.rawValue, reason: .missing)
        }
        print("Cleaning out \(path.rawValue)...")
        try cleanableFolder.empty(includingHidden: true)
    }
    
    func startCleaning() throws {
        try clean(at: .derivedData)
        try clean(at: .deviceSupport)
    }
    
}
