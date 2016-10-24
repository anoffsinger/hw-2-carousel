//
//  UserSettingsViewController.swift
//  HW-2-Carousel
//
//  Created by Adam Noffsinger on 10/22/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = imageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func didPressClose(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
