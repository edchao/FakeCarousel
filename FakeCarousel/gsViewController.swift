//
//  gsViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/15/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class gsViewController: UIViewController {

    @IBOutlet weak var viewPhotoButton: UIButton!
    
    @IBOutlet weak var useWheelButton: UIButton!
    
    @IBOutlet weak var sharePhotoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if didFullScreen == true {
            viewPhotoButton.selected = true
        }
        
        if didWheel == true {
            useWheelButton.selected = true
        }
        
        if didSharePhoto == true {
            sharePhotoButton.selected = true
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    @IBAction func didPressCancelGS(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
