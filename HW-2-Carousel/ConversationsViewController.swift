//
//  ConversationsViewController.swift
//  HW-2-Carousel
//
//  Created by Adam Noffsinger on 10/22/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
}
