import Consler

func runCleanXcode() {
    
    Logo.display()
    
    let cleaner = Cleaner()
    cleaner.provideWarning()

    if cleaner.shouldProceed() {
        
        Consler.output(
            "", "🧼🧼🧼   ", "Now cleaning your Xcode...", "   🧼🧼🧼",
            descriptors: [.endsLine, .normal, .cyan])

        do {
            
            try cleaner.startCleaning()
            
        } catch let error {
            
            Consler.output(
                "Error: ", "Something went wrong while cleaning your Xcode", error.localizedDescription,
                descriptors: [.red(.bold), .endsLine],
                type: .error)
            
            return
        }
        
        Consler.output(
            "", "✨✨✨   ", "Finished cleaning your Xcode", "   ✨✨✨","",
            descriptors: [.endsLine, .normal, .cyan(.bold)])
        
    } else {
       
        Consler.output(
            "", "🚫   ", "CleanXcode has been cancelled", "   🚫", "",
            descriptors: [.endsLine, .normal, .cyan(.bold)])
        
    }

}

runCleanXcode()
