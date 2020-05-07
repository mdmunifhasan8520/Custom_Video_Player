//
//  ViewController.swift
//  Custom_Video_Player
//
//  Created by Mac PC on 5/7/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customVideoView: UIView!
    
    
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func playBtn(_ sender: Any) {
        let filepath: String? = Bundle.main.path(forResource: "video", ofType: "mp4")
        let fileURL = URL.init(fileURLWithPath: filepath!)
        
        // Setup AVPlayer
        player = AVPlayer(url: fileURL)
        
        avpController.player = player
        
        avpController.view.frame.size.height = customVideoView.frame.size.height
        
        avpController.view.frame.size.width = customVideoView.frame.size.width
        
        self.customVideoView.addSubview(avpController.view)
        player.play()
    }
    
}

