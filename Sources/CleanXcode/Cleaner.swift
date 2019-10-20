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
    
    func startCleaning() throws {
        guard let derivedData = try? Folder(path: "~/Library/Developer/Xcode/DerivedData") else {
            print("Could not locate Derived Data")
            throw LocationError(path: "~/Library/Developer/Xcode/DerivedData", reason: .missing)
        }
        
        guard let deviceSupport = try? Folder(path: "~/Library/Developer/Xcode/iOS DeviceSupport") else {
            print("Could not locate Device Support")
            throw LocationError(path: "~/Library/Developer/Xcode/iOS DeviceSupport", reason: .missing)
        }
        
        derivedData.files.forEach { print("cleaning: \($0.name)") }
        derivedData.subfolders.recursive.flatMap { $0.files }.forEach { print("cleaning: \($0.name)") }
        deviceSupport.files.forEach { print("cleaning: \($0.name)") }
        deviceSupport.subfolders.recursive.flatMap { $0.files }.forEach { print("cleaning: \($0.name)") }
        
        try derivedData.empty(includingHidden: true)
        try deviceSupport.empty(includingHidden: true)
    }
    
}
