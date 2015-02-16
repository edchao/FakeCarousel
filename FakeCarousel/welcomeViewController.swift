//
//  welcomeViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/13/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var welcomePageCtrl: UIPageControl!
    @IBOutlet weak var spinButton: UIButton!
    
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Scroll Setup
        welcomeScrollView.contentSize = CGSize(width: 1280.0, height: 500)
        welcomeScrollView.delegate = self
        
        spinButton.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidScroll(scrollView: UIScrollView){
        currentPage = Int(welcomeScrollView.contentOffset.x / 320)
        welcomePageCtrl.currentPage = Int(currentPage)
        
        if currentPage == 3 {
            UIView.animateWithDuration(0.4, animations: {
                self.spinButton.alpha  = 1
                
            })
        }
        
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
