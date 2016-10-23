//
//  IntroViewController.swift
//  HW-2-Carousel
//
//  Created by Adam Noffsinger on 10/22/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    // starting positions
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = imageView.frame.size
        scrollView.sendSubview(toBack: imageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // content offset goes from -20 to 576
        let offset = Float(scrollView.contentOffset.y)
        
        let tx = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -30, r2Max: 0)
        let ty = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -285, r2Max: 0)
        let scale = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1, r2Max: 1)
        let rotation = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile1View.transform = CGAffineTransform(translationX: tx, y: ty)
        
        // Add rotation to the transform
        tile1View.transform = tile1View.transform.rotated(by: CGFloat(M_PI / 180) * rotation)
        
        // Add scale to the transform
        tile1View.transform = tile1View.transform.scaledBy(x: scale, y: scale)
        
        let tx2 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 75, r2Max: 0)
        let ty2 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -240, r2Max: 0)
        let scale2 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1.65, r2Max: 1)
        let rotation2 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile2View.transform = CGAffineTransform(translationX: tx2, y: ty2)
        
        // Add rotation to the transform
        tile2View.transform = tile2View.transform.rotated(by: CGFloat(M_PI / 180) * rotation2)
        
        // Add scale to the transform
        tile2View.transform = tile2View.transform.scaledBy(x: scale2, y: scale2)

        let tx3 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -66, r2Max: 0)
        let ty3 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -415, r2Max: 0)
        let scale3 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1.7, r2Max: 1)
        let rotation3 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile3View.transform = CGAffineTransform(translationX: tx3, y: ty3)
        
        // Add rotation to the transform
        tile3View.transform = tile3View.transform.rotated(by: CGFloat(M_PI / 180) * rotation3)
        
        // Add scale to the transform
        tile3View.transform = tile3View.transform.scaledBy(x: scale3, y: scale3)
        
        let tx4 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 10, r2Max: 0)
        let ty4 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -408, r2Max: 0)
        let scale4 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1.6, r2Max: 1)
        let rotation4 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile4View.transform = CGAffineTransform(translationX: tx4, y: ty4)
        
        // Add rotation to the transform
        tile4View.transform = tile4View.transform.rotated(by: CGFloat(M_PI / 180) * rotation4)
        
        // Add scale to the transform
        tile4View.transform = tile4View.transform.scaledBy(x: scale4, y: scale4)

        let tx5 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -200, r2Max: 0)
        let ty5 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -480, r2Max: 0)
        let scale5 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1.65, r2Max: 1)
        let rotation5 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile5View.transform = CGAffineTransform(translationX: tx5, y: ty5)
        
        // Add rotation to the transform
        tile5View.transform = tile5View.transform.rotated(by: CGFloat(M_PI / 180) * rotation5)
        
        // Add scale to the transform
        tile5View.transform = tile5View.transform.scaledBy(x: scale5, y: scale5)
        
        let tx6 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -15, r2Max: 0)
        let ty6 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -500, r2Max: 0)
        let scale6 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: 1.65, r2Max: 1)
        let rotation6 = convertValue(inputValue: CGFloat(offset), r1Min: -20, r1Max: 576, r2Min: -10, r2Max: 0)
        
        // Reset the transform and apply a translation
        tile6View.transform = CGAffineTransform(translationX: tx6, y: ty6)
        
        // Add rotation to the transform
        tile6View.transform = tile6View.transform.rotated(by: CGFloat(M_PI / 180) * rotation6)
        
        // Add scale to the transform
        tile6View.transform = tile6View.transform.scaledBy(x: scale6, y: scale6)

        
    }

}
