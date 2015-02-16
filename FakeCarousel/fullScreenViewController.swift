//
//  fullScreenViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/15/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class fullScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        didFullScreen = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func didPressShare(sender: AnyObject) {
        didSharePhoto = true
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
