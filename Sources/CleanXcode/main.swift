func runCleanXcode() {
    
    Logo.display()
    
    let cleaner = Cleaner()
    cleaner.provideWarning()

    if cleaner.shouldProceed() {
        
        print("\nNow cleaning your Xcode...\n")

        do {
            
            try cleaner.startCleaning()
            
        } catch let error {
            
            print("There was an error in cleaning your Xcode")
            print("Error \(error)")
            return
            
        }
        
        print("\nFinished cleaning your Xcode")
        print("Thank You\n")
        
    } else {
       
        print("\nXcode Cleaner has been cancelled")
        print("Thank You\n")
        
    }

}

runCleanXcode()
