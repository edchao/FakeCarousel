
//
//  introViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/11/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class introViewController: UIViewController, UIScrollViewDelegate {

    // Vars
    var tileOneOriginX : CGFloat! = 30.0
    var tileOneOriginY : CGFloat! = 570.0
    var tileOneDestX : CGFloat! = 123.0
    var tileOneDestY : CGFloat! = 255.0
    var tileOneAngle : CGFloat! = -0.2
    var tileOneScale : CGFloat! = 1.0
    
    var tileTwoOriginX : CGFloat! = 280.0
    var tileTwoOriginY : CGFloat! = 547.0
    var tileTwoDestX : CGFloat! = 239.0
    var tileTwoDestY : CGFloat! = 216.0
    var tileTwoAngle : CGFloat! = -0.2
    var tileTwoScale : CGFloat! = 1.8

    var tileThreeOriginX : CGFloat! = 260.0
    var tileThreeOriginY : CGFloat! = 460.0
    var tileThreeDestX : CGFloat! = 239.0
    var tileThreeDestY : CGFloat! = 293.0
    var tileThreeAngle : CGFloat! = 0.2
    var tileThreeScale : CGFloat! = 1.8

    var tileFourOriginX : CGFloat! = 160.0
    var tileFourOriginY : CGFloat! = 560.0
    var tileFourDestX : CGFloat! = 84.0
    var tileFourDestY : CGFloat! = 370.0
    var tileFourAngle : CGFloat! = 0.2
    var tileFourScale : CGFloat! = 1.8
    
    var tileFiveOriginX : CGFloat! = 20.0
    var tileFiveOriginY : CGFloat! = 450.0
    var tileFiveDestX : CGFloat! = 162.0
    var tileFiveDestY : CGFloat! = 370.0
    var tileFiveAngle : CGFloat! = 0.2
    var tileFiveScale : CGFloat! = 1.8
    
    var tileSixOriginX : CGFloat! = 145.0
    var tileSixOriginY : CGFloat! = 470.0
    var tileSixDestX : CGFloat! = 239.0
    var tileSixDestY : CGFloat! = 370.0
    var tileSixAngle : CGFloat! = -0.2
    var tileSixScale : CGFloat! = 1.8
    
    // Tiles
    @IBOutlet weak var tileOne: UIImageView!
    @IBOutlet weak var tileTwo: UIImageView!
    @IBOutlet weak var tileThree: UIImageView!
    @IBOutlet weak var tileFour: UIImageView!
    @IBOutlet weak var tileFive: UIImageView!
    @IBOutlet weak var tileSix: UIImageView!
    
    
    // ScrollView
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tile Setup
        setupTransform(tileOne, xOrigin: tileOneOriginX, yOrigin: tileOneOriginY, angleOrigin: tileOneAngle, scaleOrigin: tileOneScale)
        setupTransform(tileTwo, xOrigin: tileTwoOriginX, yOrigin: tileTwoOriginY, angleOrigin: tileTwoAngle, scaleOrigin: tileTwoScale)
        setupTransform(tileThree, xOrigin: tileThreeOriginX, yOrigin: tileThreeOriginY, angleOrigin: tileThreeAngle, scaleOrigin: tileThreeScale)
        setupTransform(tileFour, xOrigin: tileFourOriginX, yOrigin: tileFourOriginY, angleOrigin: tileFourAngle, scaleOrigin: tileFourScale)
        setupTransform(tileFive, xOrigin: tileFiveOriginX, yOrigin: tileFiveOriginY, angleOrigin: tileFiveAngle, scaleOrigin: tileFiveScale)
        setupTransform(tileSix, xOrigin: tileSixOriginX, yOrigin: tileSixOriginY, angleOrigin: tileSixAngle, scaleOrigin: tileSixScale)
        
        
        // Scroll Setup
        introScrollView.contentSize = introImageView.frame.size
        introScrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        //println(introScrollView.contentOffset.y)
        
        var scrollVal = Float(introScrollView.contentOffset.y)
        
        // Tile Transforms
        makeTransform(scrollVal, targetObject: self.tileOne, xOrigin: self.tileOneOriginX, xDest: self.tileOneDestX, yOrigin: self.tileOneOriginY, yDest: self.tileOneDestY, angleOrigin: self.tileOneAngle, scaleOrigin: self.tileOneScale)
        makeTransform(scrollVal, targetObject: self.tileTwo, xOrigin: self.tileTwoOriginX, xDest: self.tileTwoDestX, yOrigin: self.tileTwoOriginY, yDest: self.tileTwoDestY, angleOrigin: self.tileTwoAngle, scaleOrigin: self.tileTwoScale)
        makeTransform(scrollVal, targetObject: self.tileThree, xOrigin: self.tileThreeOriginX, xDest: self.tileThreeDestX, yOrigin: self.tileThreeOriginY, yDest: self.tileThreeDestY, angleOrigin: self.tileThreeAngle, scaleOrigin: self.tileThreeScale)
        makeTransform(scrollVal, targetObject: self.tileFour, xOrigin: self.tileFourOriginX, xDest: self.tileFourDestX, yOrigin: self.tileFourOriginY, yDest: self.tileFourDestY, angleOrigin: self.tileFourAngle, scaleOrigin: self.tileFourScale)
        makeTransform(scrollVal, targetObject: self.tileFive, xOrigin: self.tileFiveOriginX, xDest: self.tileFiveDestX, yOrigin: self.tileFiveOriginY, yDest: self.tileFiveDestY, angleOrigin: self.tileFiveAngle, scaleOrigin: self.tileFiveScale)
        makeTransform(scrollVal, targetObject: self.tileSix, xOrigin: self.tileSixOriginX, xDest: self.tileSixDestX, yOrigin: self.tileSixOriginY, yDest: self.tileSixDestY, angleOrigin: self.tileSixAngle, scaleOrigin: self.tileSixScale)

    }
    
    

    func setupTransform (targetObject: UIImageView, xOrigin:CGFloat, yOrigin:CGFloat, angleOrigin: CGFloat, scaleOrigin: CGFloat){
        
        var transformRotate = CGAffineTransformMakeRotation(angleOrigin)
        var transformScale = CGAffineTransformMakeScale(scaleOrigin, scaleOrigin)
        targetObject.transform = CGAffineTransformConcat(transformRotate, transformScale)
        targetObject.center.y = yOrigin
        targetObject.center.x = xOrigin
    }
    
    func makeTransform (valChange: Float, targetObject: UIImageView, xOrigin: CGFloat, xDest:CGFloat, yOrigin: CGFloat, yDest: CGFloat, angleOrigin: CGFloat, scaleOrigin: CGFloat){
        
        targetObject.center.y = CGFloat(convertValue(valChange, 0.0, 568.0, Float(yOrigin), Float(yDest)))
        targetObject.center.x = CGFloat(convertValue(valChange, 0.0, 568.0, Float(xOrigin), Float(xDest)))
        var transformRotate = CGAffineTransformMakeRotation(CGFloat(convertValue(valChange, 0.0, 568.0, Float(angleOrigin), 0.0)))
        var transformScale = CGAffineTransformMakeScale(CGFloat(convertValue(valChange, 0.0, 568.0, Float(scaleOrigin), 1.0)),CGFloat(convertValue(valChange, 0.0, 568.0, Float(scaleOrigin), 1.0)))
        targetObject.transform = CGAffineTransformConcat(transformRotate, transformScale)
        
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
