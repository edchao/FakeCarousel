//
//  FeedViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/10/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var bannerButton: UIButton!
    
    
    override func viewDidAppear(animated: Bool) {
        
        if didSharePhoto == true && didFullScreen == true && didWheel == true {
            self.bannerButton.alpha = 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        feedScrollView.contentSize = feedImageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func didSwipeCarousel(sender: AnyObject) {
        println("hi")
        didWheel = true
        if didSharePhoto == true && didFullScreen == true && didWheel == true {
            self.bannerButton.alpha = 0
        }
    }

    

}
