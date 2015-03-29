//
//  InterfaceController.swift
//  MusicPlayerWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/29/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation

class InterfaceController: WKInterfaceController {
    var audioPlayer = AVAudioPlayer()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    @IBAction func playRoyals() {
        setAudio("Royals")
        audioPlayer.play()
    }
    
    @IBAction func playBicycle() {
        setAudio("Bicycle")
        audioPlayer.play()
    }
    
    @IBAction func playMindYourManners() {
        setAudio("MindYourManners")
        audioPlayer.play()
    }
    
    @IBAction func playGoRightAhead() {
        setAudio("GoRightAhead")
        audioPlayer.play()
    }
    
    func setAudio(song:NSString) {
        //Configure the Audio Player.
        var soundPath = NSBundle.mainBundle().pathForResource(song, ofType: "mp3")
        var soundPathURL = NSURL(fileURLWithPath: soundPath!)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: soundPathURL, error: &error)
        audioPlayer.prepareToPlay()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
