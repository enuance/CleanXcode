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
                descriptors: [.boldRed, .endsLine],
                type: .error)
            
            return
        }
        
        Consler.output(
            "", "✨✨✨   ", "Finished cleaning your Xcode", "   ✨✨✨","",
            descriptors: [.endsLine, .normal, .boldCyan])
        
    } else {
       
        Consler.output(
            "", "🚫   ", "CleanXcode has been cancelled", "   🚫", "",
            descriptors: [.endsLine, .normal, .boldCyan])
        
    }

}

runCleanXcode()
