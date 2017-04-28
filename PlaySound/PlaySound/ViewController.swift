//
//  ViewController.swift
//  PlaySound
//
//  Created by Manolo on 25/4/17.
//  Copyright © 2017 mgdn.inc. All rights reserved.
//

import UIKit
import AVFoundation

var picsPlayer = ["song1", "song2", "song3", "song4"]
var myIndexPics = 0


class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func playButton(_ sender: AnyObject) {
        player.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = names[myIndex]
        
       
        do
        {
// This is the original code working with only one song: song1
//            let audioPath = Bundle.main.path(forResource: "song1", ofType: "mp3")
//            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)

            
// Attempt to use array picsPlayer to listen all musics.
            let audioPath = Bundle.main.path(forAuxiliaryExecutable: picsPlayer[myIndexPics])
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))

            
        }
        catch
        {
            //ERROR
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

