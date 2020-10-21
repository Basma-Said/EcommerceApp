//
//  ViewController.swift
//  EcommerceApp
//
//  Created by Basma Said on 14/10/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: Storyboard.loginVC, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: Storyboard.logVC_ID)
        present(controller, animated: true, completion: nil)
    }

}

