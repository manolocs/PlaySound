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

    @IBAction func playButton(_ sender: AnyObject) {
        player.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        do
        {
            let audioPath = Bundle.main.path(forResource: "song1", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            
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

