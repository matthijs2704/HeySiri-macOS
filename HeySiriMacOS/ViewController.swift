//
//  ViewController.swift
//  HeySiriMacOS
//
//  Created by Matthijs Logemann on 16/06/2016.
//  Copyright © 2016 Matthijs Logemann. All rights reserved.
//

import Cocoa
import AVFoundation
import AVKit
//import Speech

class ViewController: NSViewController, NSSpeechRecognizerDelegate {

  
    let SR:NSSpeechRecognizer = NSSpeechRecognizer()!
    var commands = ["Hey siri"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SR.commands = commands
        SR.delegate = self
        SR.listensInForegroundOnly = false
        
        SR.startListening(); print("listening")

    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func speechRecognizer(_ sender: NSSpeechRecognizer, didRecognizeCommand command: String) {
        if (command as! String == "Hey siri")
        {
            NSWorkspace.shared().launchApplication("/Applications/Siri.app")
        }
    }
}

