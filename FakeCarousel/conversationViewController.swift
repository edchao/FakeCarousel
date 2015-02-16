//
//  conversationViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/15/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class conversationViewController: UIViewController {

    @IBOutlet weak var convoBackButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func didPressConvoBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

}
