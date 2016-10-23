//
//  SettingsViewController.swift
//  HW-2-Carousel
//
//  Created by Adam Noffsinger on 10/22/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!
    
    override func viewDidLoad() {
        settingsScrollView.contentSize = settingsImageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapClose(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
