//
//  MovieViewController.swift
//  Demo
//
//  Created by Vien Vu  on 3/30/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class MovieViewController: UIViewController {
    
  
    
    let playerController = AVPlayerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let player = AVPlayer(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("video", ofType: "mp4")!))
        
        
        playerController.player = player
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
        playerController.view.frame = self.view.frame
        
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        playerController.view.frame = CGRectMake(20, 40, 200, 300)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
